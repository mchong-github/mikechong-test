
# 1) Build a small Nomad test cluster either locally or or in the cloud, single node is fine.

- NOTE: my first time using Nomad. 

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

<br>
<br>
<br>

# 2) Build Docker files for both sample applications (applications must return correct results).

> Dockerfiles.app_a

> Dockerfiles.app_b

- Images were upload to my Docker Hub account
> I was not able to figure out why "flask" app was failing for "curl -X POST -H 'Authorization: mytoken' http://127.0.0.1:5000/jobs".
> I'm not sure where or how to setup the Authorization of "mytoken" token.
> curl for "/hello" did return success.

<br>
<br>
<br>

# 3) Build a deployment mechanism for Nomad's [docker driver](https://www.nomadproject.io/docs/drivers/docker), this should include basic .hcl files for both applications.

NOTE: I'm sure there are more can be done, but this is far as I got to deploy the services and setup traffic into the containers. 

> jobs/apps.hcl

<br>
<br>
<br>

# 4) Brainstorm a plan for continuous delivery for Nomad, discuss the specific tools you'd look at and your evaluation criteria for them.

  - CD
> For CD, a git repo can be utilized to integrate and store large amount of "jobs" to be scheduled in the cluster. 
> Then, each repo/branch can be setup with an automatic trigger(ie. git commit) in the event of updated code to be deployed into the desired environment

  - Evaluation Criteria
> Since this exercise was to deploy Nomad(from Hashicorp), I looked form tools that can integrate well and found 'hashi-up" tool to get things started.
> I also researched into other  tools from Hashicorp, which could be used to complement this deployment (i.e  Consul, Vault, Terraform). 

<br>
<br>
<br>
