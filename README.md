# Purpose

To create a module in terraform that instantiates an ec2 instance with Docker installed and running the NGINX official image.

# Pre-reqs

In order to run this, this requires terraform to be installed. You will need to have a key pair, security group, and access keys already created and saved before starting.

# Notes

1. Ensure access keys are provided in the provider block.
2. Ensure a keypair for ec2 instances already exists in your account and that you have access to the keys. Specify the key name and path. Key Path is specified in the root variables.tf file.
3. This uses the default VPC, **it is not secure**. In addition, it requires a security group to already exist and have inbound 22 open to your IP. I used the default launch wizard group.
4. The internal IP reference is vague, I have included both the docker container internal IP via remote-exec and the instance private ip address using terraform output.

# Iteration
This project can be iterated upon in multiple ways. I created a very barebones ec2 instance module. This can and should be expanded upon to include more of what AWS has to offer regarding ec2 instances. In addition, the security of the project is only reliant on the ssh keys, it is incredibly insecure due to basic VPC and security group usage. I would increase security by creating a VPC with proper networking, NACLs, and security groups. Security should be included from the ground up and by making security a part of the early design, it can be accommodated for much more easily.

From a deployment perspective, I would iterate this design by having the configuration done either before by utilizing packer and creating a golden ami for terraform to deploy and only triggering docker to run via remote-exec. Alternatively, I could use remote-exec to enroll the newly created instance into a hypothetical configuration management group and utilize the configuration management system to provision out docker and containers. Either of these methods reduces the complexity of the terraform code and isolates the responsibility of the software. It would reduce technical debt and be more simple to work with if duties are kept discrete from each other, i.e terraform for infrastructure and ansible for configuration management.
