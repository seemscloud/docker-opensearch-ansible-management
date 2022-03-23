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

## Output

```json
[root]@[1ws0][~]# docker exec -it prod-opensearch curl http://0:9200/_remote/info?pretty
{
  "ppe-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "ppe-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  },
  "qat-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "qat-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  }
}

{
  "prod-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "ppe-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  },
  "qat-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "qat-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  }
}

{
  "ppe-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "prod-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  },
  "prod-opensearch" : {
    "connected" : true,
    "mode" : "sniff",
    "seeds" : [
      "prod-opensearch:9300"
    ],
    "num_nodes_connected" : 1,
    "max_connections_per_cluster" : 3,
    "initial_connect_timeout" : "30s",
    "skip_unavailable" : false
  }
}
```
