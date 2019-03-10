psql -h localhost -p 5432 -U eccaproygrad -d dwcalidadaire
http://127.0.0.1:8081/kettle/status/
Create File System repository admin/admin
GET
  http://cluster:cluster@127.0.0.1:8081/kettle/runJob?job=/CargaDiasImportantes
  http://cluster:cluster@127.0.0.1:8081/kettle/jobStatus/?name=CargaDiasImportantes&xml=Y
  http://cluster:cluster@127.0.0.1:8081/kettle/status?xml=Y