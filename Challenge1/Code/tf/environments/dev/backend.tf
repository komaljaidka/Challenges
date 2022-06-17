terraform {
	backend "s3" {
	bucket 			= "Application-s1-001"
	dynamodb_table 	= "Application-s1-tfstatedb-001"
	key 			= "terraform-state/terraform.tfstate"
	encrypt 		= true
	region 			= "US"
	role_arn 		= "arn:aws:iam::<<AWSaccountid>>:role/<<rolename>"
	}
	}
	