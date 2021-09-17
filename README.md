# mikechong-test


## Single-Node Dev
run single-node test nomad

>$ sh deploy-nomad-dev.sh 
 
to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-dev.sh


## HA-Cluster

first, stand up vm's (3 servers + 3 clients = 6 total)

run ha-cluster nomad

>$ sh deploy-nomad-ha-cluster.sh 

to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-ha.sh


## CI/CD
use github for code repository
