# Chaos Monkey Terraform

This contains a Terraform module to bring up an EC2 instance running [Netflix's Simian Army](https://github.com/Netflix/SimianArmy),
their first implementation of chaos monkey and some sample code.

## chaos-monkey module

The module sets up a [Simian Army docker image](https://hub.docker.com/r/ehime/monkeymagic/). Most configuration
properties in the image are exposed through module variables with the same default values. You can refer to these properties
[here](https://github.com/ehime/docker-monkeymagic/blob/master/docs/configuration.md).
The naming should be adapted by converting / to _ and dropping the simianarmy prefix, whereas a property listed as
"/simianarmy/client/aws/accountkey" become "client_aws_accountkey".

Also keep in mind that properties with boolean values should not use unquoted `true` and `false` keywords in terraform
as those get converted to `"0"` and `"1"` and the image needs the actual words `"true"` and `"false"` as strings.

## Sample ASG

This just brings up an AWS ASG that runs 1 instance running [docker-alwaysblue](https://github.com/ehime/docker-alwaysblue) in order
for the monkey to have something to attack and we're able to see it in action.