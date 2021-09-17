
# Build a small Nomad test cluster either locally or or in the cloud, single node is fine.

### Single-Node Dev
run single-node test nomad

>$ sh deploy-nomad-dev.sh 
 
to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-dev.sh


### HA-Cluster

first, stand up vm's (3 servers + 3 clients = 6 total)

run ha-cluster nomad

>$ sh deploy-nomad-ha-cluster.sh 

to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-ha.sh


- Build Docker files for both sample applications (applications must return correct results).
- Build a deployment mechanism for Nomad's [docker driver](https://www.nomadproject.io/docs/drivers/docker), this should include basic .hcl files for both applications.
- Brainstorm a plan for continuous delivery for Nomad, discuss the specific tools you'd look at and your evaluation criteria for them.



## CI/CD
use github for code repository
