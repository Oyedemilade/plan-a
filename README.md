# Solution to the task

I did something similar some months ag

On the infrastruture part, I created it using just terraform

The provider and backend configurations is contained in the main.ft

The network configurations (VPC, SUBNETS, Internet Gateway, NAT, Route Tables) are contained in the network.tf

Security configurations (Security Groups and NACL) are in the security.tf

Load balancer configurations ( alb, target group, lister, lister rule) are contained in the alb.tf

ECS configurations are in the ecs.tf and the container definition template is contained in the myapp.json.tpl file in the template folder 

logs.tf is for log group

role.tf contains iam roles

and output.tf to output the created load balancer

For deployment pipeline a github action workflow (aws.yml) and and task-defination.json is created. 

The aws access and secret are passed using action secret. the url to the load balancer is  
