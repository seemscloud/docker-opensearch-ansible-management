#!/bin/bash

for ENVIRONMENT in prod ppe qat ; do
  ansible-playbook --inventory inventories/${ENVIRONMENT}/inventory.yml \
                   --extra-vars @configs/${ENVIRONMENT}/settings.yaml \
                   --tags all \
                   --limit all \
                   roles/main.yaml
done