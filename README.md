### Start Opensearch and Dashboards 
```bash
docker-compose up --build --remove-orphans --force-recreate prod-opensearch ppe-opensearch qat-opensearch opensearch-dashboards
```

### Run ansible
```bash
docker-compose up --build --remove-orphans --force-recreate ansible
```