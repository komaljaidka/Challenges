#########################Defaults Tags##########################

default_tags = {
Application 		= "Application Name"
Environment			= "Development"
DataClassification 	= "Proprietary"
CostCenter			= "111111"
Division			= "DepartmentName"
Consumer			= "ApplicationOwner@gmail.com"
Service				= "Application-Development"

}

#######################EC2############################


ec2_servers = {
  ec2_1  = {
  subnet_id 				= 	"SubnetRange",
  ami_id					=	"ami-0adXXXXXXXXXXX",
  instance_type				=	"t3.large",
  key_pair					=	"",
  prefix					=	"",
  application				=	"Application",
  environment				=	"Development",
  labels_region				=	"US",
  attributes				=	["ec2", "02"],
  iam_instance_profile		=	"Rolename",
  private_ip				=	null,
  secondary_private_ips     =   [],
  ipv6_address_count		= 	null,
  user_data_file_name		=   "windows.txt"
  }
}

##########################RDS#########################3

prefix							=	""
labels_region					=   "US"
application						=   "Application"
rds_attribuutes					=	["rds","01"]
availability_zone				=	""
environment						=	"Development"
param_family					=	"oracle-ee-19"
license_model					=	"bring your own license"
engine							=	"oracle-ee"
engine_version					=	"19.0.0..ru-2022-01."
subnet_group_attributes			=   ["app", "subnetgroup", "01"]
parameter_group_attibutes		=	["app", "parametergroup", "01"]
option_group_attributes			=	["app", "optiongroup", "01"]
rds_tags = { 
	createdbyterraform = "true"
}




