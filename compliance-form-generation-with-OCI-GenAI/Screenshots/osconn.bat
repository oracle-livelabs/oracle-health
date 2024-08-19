# Connecting to rarghosh opensearch cluster
ssh -C -v -t -L 127.0.0.1:5601:10.0.1.138:5601 -L 127.0.0.1:9200:10.0.1.88:9200 opc@207.211.166.60 -i ssh-key-2024-08-15.key