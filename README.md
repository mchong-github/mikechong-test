
# 1) Build a small Nomad test cluster either locally or or in the cloud, single node is fine.

- NOTE: my first time using the Nomad. 

### Single-Node Test

run single-node test nomad

>$ sh deploy-nomad-dev.sh 
 
to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-dev.sh


### HA-Cluster

 - first, I stood up 6 vm's (3 servers + 3 clients). 
 - then, installed required packages to allow Nomad to build the cluster.

run ha-cluster nomad

>$ sh deploy-nomad-ha-cluster.sh 

to redeploy job, modify the jobs file and run

>$ sh redeploy-job-in-ha.sh


# 2) Build Docker files for both sample applications (applications must return correct results).

> Dockerfiles.app_a

> Dockerfiles.app_b

- images were upload to my Docker Hub account


# 3) Build a deployment mechanism for Nomad's [docker driver](https://www.nomadproject.io/docs/drivers/docker), this should include basic .hcl files for both applications.

NOTE: being a first timer with Nomad, I was able to deploy and config traffic into the containers. 

> jobs/apps.hcl


# 4) Brainstorm a plan for continuous delivery for Nomad, discuss the specific tools you'd look at and your evaluation criteria for them.

  - CD
> For CD, a git repo can be utilized to integrate the large amount of "jobs" to be scheduled in the cluster. 
> Then, each repo/branch can be setup with an automatic trigger(ie. git commit) in the event of new code has been added to deploy into the desired environment

  - Evaluation Criteria
> Since this exercise was to deploy Nomad(from Hashicorp), I looked into few tools from Hashicorp and found 'hashi-up" tool to get things started.
> Additional tools from Hashicorp could be used to complement this deployment (i.e  Consul, Vault, Terraform). 
