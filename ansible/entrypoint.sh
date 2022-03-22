#!/bin/bash

ansible-playbook -i inventories/inventory.yml roles/all.yml --tags all --limit all --connection=local

ls -lh /tmp