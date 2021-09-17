# mikechong-test


## Single-Node Dev
>$ sh deploy-nomad-dev.sh  
to redeploy job, modify the jobs file and run
>$ sh redeploy-job-in-dev 

$ sh redeploy

## HA-Cluster

first, stand up vm's (3 servers + 3 clients = 6 total)

$ sh deploy-nomad-ha-cluster.sh 


## CI/CD
use github for code repository
