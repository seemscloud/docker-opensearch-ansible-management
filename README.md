## Start Opensearch and Opensearch Dashboards 
```bash
docker-compose up --build --remove-orphans --force-recreate \
                prod-opensearch \
                ppe-opensearch \
                qat-opensearch \
                opensearch-dashboards
```

### Wait until the service is up

## Run ansible
```bash
docker-compose up --build --remove-orphans --force-recreate ansible
```