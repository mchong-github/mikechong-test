
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

- Images were built then upload to my Docker Hub account

> Dockerfiles.app_a

> Dockerfiles.app_b

> I was not able to figure out why "flask" app was failing for "curl -X POST -H 'Authorization: mytoken' http://127.0.0.1:5000/jobs".
> I saw the "mytoken" data in schema.sql which was used to create "database.db", but I'm not sure where or how to fix the Authorization of "mytoken" token in flask.
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
> Then, each repo/branch can be setup with an automatic trigger(ie. git commit) in the event of updated job/code to be deployed into the desired environment

  - Evaluation Criteria
> Since this exercise was to deploy Nomad(from Hashicorp), I looked for tools that can be integrated well.
> I used 'hashi-up" for my cluster builds.
> I also researched into other tools from Hashicorp, which could be used to complement this deployment (i.e  Consul, Vault, Terraform). 
> 

<br>
<br>
<br>



# 5) Brief discussion of Nomad as a container platform - note strengths and weaknesses vs more common options (e.g. Kubernetes)

> I think the biggest strength of Nomad was how easy and fast it was to build a HA cluster.  
> However, I found that the workflow required jugling with many tools from Hashicorp, which I think may become harder to maintain/manages as infrastructure grows.
> I do see Nomad being viable for production use and I'd like to work with and evaluate "Nomad vs Kubernetes" more in the future to determine which technology may be a best fit for various environment.


<br>
<br>
<br>

