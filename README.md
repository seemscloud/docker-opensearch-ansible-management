PUT /_cluster/settings
{
  "persistent" : {
    "cluster" : {
      "remote" : {
        "ppe-opensearch" : {    
          "seeds" : [
            "ppe-opensearch:9300" 
          ]
        }
      }
    }
  }
}