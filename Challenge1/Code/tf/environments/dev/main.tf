#Main
provider "aws" {
    region = local.select_region
	assume_role {
	role_arn = "arn:aws:iam::<<awsaccountid>>:role/<role>"
	}
}

##################################################################
###############EC2 Module#########################################
##################################################################

module "ec2_server" {
    source 						= "Standard Code Repository URL(Artifactory or Stash Link"
	ec2_server 					=  var.ec2_server
	default_tags				=  var.default_tags
	kms_arn 					=  null
	sg							=  null
	instance_profile_details 	= "<<Rolename>>"
	
}

################################################################
Database Credentials Stored in Secret Manager
################################################################

data "aws_secretmanager_secret_version" oracle_creds {
     secret_id = var.rds_cred_secret
}

locals {
	oracle_db_creds = jsondecode(
	data.aws_secretmanager_secret_version.oracle_creds.secret_string
	)
}

##############################################################
################RDS Module#####################################
###############################################################

module "oracle_rds" {
source = "URL to stash or Artifactory Link where RDS code resides"
prefix						= var.prefix
application					= var.application
environment					= var.environment
labels_region				= var.labels_region
rds_attributes				= var.rds_attributes
availability_time			= var.availability_zone
param_family				= var.param_family
license_model				= var.license_model
engine						= var.engine
engine_version              = var.engine_version
db_username                 = local.oracle_db_creds["username"]
db_password            		= local.oracle_db_creds["password"]
rds_tags					= var.rds_tags
options 					= var.options
apply_immediately			= var.apply_immediately

}



