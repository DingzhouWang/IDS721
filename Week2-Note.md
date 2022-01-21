# Week2 Note

# Notes

* Files we need to impelement CD: app.yaml(runtime we want to use) + cloudbuild.yaml(tell cloud build server how to build) + app source code + requirements.txt(packages we need)

* SaaS PaaS(logic(abstracted) but expensive -> GAE Beanstock) IaaS(cheap: storage networking db, but high skills -> EC2) MaaS Serverless(FaaS)
  IaaS: 提供networking database storage compute等不同服务的access
  PaaS: 和hardware OS相关 focus on application’s deployment & management
  SaaS: 不用考虑底层， only how to use
  MaaS: Hardware
  Serverless: function(AWS lambda)

* IaC : 
Infrastructure as Code (IaC) is the managing and provisioning of infrastructure through code instead of through manual processes.
With IaC, configuration files are created that contain your infrastructure specifications, which makes it easier to edit and distribute configurations. It also ensures that you provision the same environment every time.

* CI : 关联到repo？
* 
* CD : app.yaml(runtime we want to use) + cloudbuild.yaml(tell cloud build server how to build) + app source code + requirements.txt(packages we need)

* Container as a Service (ECR: container register)
* ECS 
* bucket
