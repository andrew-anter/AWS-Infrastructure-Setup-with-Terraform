# AWS Infrastructure Setup with Terraform

### Problem Statement

This repository contains the solution to an AWS challenge problem using Terraform. The goal of the problem is to create the following components in AWS according to the diagram below:

<ul>
<li>A public subnet</li>
<li>A private subnet</li>
<li>A NAT gateway</li>
<li>An internet gateway</li>
<li>Routing tables for the public and private subnets</li>
<li>A VPC</li>
<li>Two EC2 instances (one in each subnet)</li>
<li>Security groups associated with the two instances</li>
</ul>

### Solution

The solution to this problem is implemented using Terraform, a tool for provisioning infrastructure as code. The Terraform configuration files in this repository create the necessary resources in AWS. The following steps are involved in the solution:
<ol>
<li>Create a VPC.</li>
<li>Create two subnets, one public and one private.</li>
<li>Create a NAT gateway and attach it to the public subnet.</li>
<li>Create an internet gateway and attach it to the VPC.</li>
<li>Create routing tables for the public and private subnets.</li>
<li>Create two EC2 instances, one in each subnet.</li>
<li>Create security groups for the two instances.</li>
</ol>
The Terraform configuration files in this repository are well-commented and easy to understand. They can be used as a starting point for creating similar infrastructure in AWS.



![image](https://github.com/andrew-anter/terraform-lab2/assets/56892364/ecdaa6e9-d193-41ba-a056-85f62e0b909f)
