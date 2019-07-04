# TonyPNode Info site modules
First, totally already know that the use of modules for 
an architecture this small is pretty silly. However, it's fun.. and I do
what I want. :)

I'm trying something a little different here as well, I added a version
folder under each module. I don't know exactly how that's going to work
out, but wanted to try it for a few iterations to see if it's beneficial.
I suppose I could use git tags or git branches, but we'll see how this goes.

I usually create a `main.tf`, `outputs.tf`, `vars.tf` for any module that 
I create regardless if it's used. It's just a habit at this point.


## ec2/Modules

### Webbox
The webbox modules is just that, it's the instance that runs nginx which 
talks to uwsgi which instantiates Django.

I've been trying out creating the security group with the module for instances.
I've run into problems with it when there are too many ingress entries
, but for this one it eliminates the need for me to create security multiple
security groups for each instance. I just call the module and poof, dedicated
security group that does its job. 
___

### network/inet_gw
The inet_gw module is probably the least beneficial to modularize and may 
migrate it to the nacl or route table module.

___

### network/lb
This module creates the an ELB, the target group, and the security group to go along with it.
In order to be a bit more flexible, I might not normally put the security group
in the module, but I'm going for the ability to destroy and completley rebuild
the entire architecture, so creating each module specific for this app
made sense in my head. As I get closer to completion, we'll see how well it works out.

I saved the target group attachment for the prod_over state because I don't have the
instance id's in the prod_under state. 

___

### network/nacl
Does the nacl... duh

___

### network/network
Ok... this was a silly name.. Should have been subnets.. but meh.

This creates a subnet. I have to create 2 of these in order for the 
load balancer to work.


___

### network/route_table
Sets up the route table for the vpc and sets the default route the internet
gateway.

### security/security_groups/admin
This module is used to allow me to accesses the web and db tier. I only apply this
when I need it. 

### vpc/vpc
Yup... creates a vpc.. you got it.
