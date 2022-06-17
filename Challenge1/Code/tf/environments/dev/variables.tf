##############Variables for EC2 servers###################################

variable "ec2_servers" {
   type = map(object({
    key_pair  		= string,
	subnet_id 		= string,
	ami_id	  		= string,
	instance_type 	= string,
	environment 	= string,
	labels_region	= string
	}
	)
	)
	}
	
	variable "Prefix"
	{
	type 			= string
	description 	= "This is a prefix"
	}
	
	variable "Application"
	{
	type			= string
	description     = "This is an application name"
	}
	
	
	