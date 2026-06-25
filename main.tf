provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true

  endpoints {
    apigateway     = "http://172.16.0.114:4566"
    apigatewayv2   = "http://172.16.0.114:4566"
    cloudformation = "http://172.16.0.114:4566"
    cloudwatch     = "http://172.16.0.114:4566"
    dynamodb       = "http://172.16.0.114:4566"
    ec2            = "http://172.16.0.114:4566"
    es             = "http://172.16.0.114:4566"
    elasticache    = "http://172.16.0.114:4566"
    firehose       = "http://172.16.0.114:4566"
    iam            = "http://172.16.0.114:4566"
    kinesis        = "http://172.16.0.114:4566"
    lambda         = "http://172.16.0.114:4566"
    rds            = "http://172.16.0.114:4566"
    redshift       = "http://172.16.0.114:4566"
    route53        = "http://172.16.0.114:4566"
    s3             = "http://172.16.0.114:4566"
    secretsmanager = "http://172.16.0.114:4566"
    ses            = "http://172.16.0.114:4566"
    sns            = "http://172.16.0.114:4566"
    sqs            = "http://172.16.0.114:4566"
    ssm            = "http://172.16.0.114:4566"
    stepfunctions  = "http://172.16.0.114:4566"
    sts            = "http://172.16.0.114:4566"
  }
}

# Appel du module
module "infrastructure_ec2" {
  source        = "./modules/ec2"
  environment   = var.environment
  vpc_cidr      = var.vpc_cidr
  subnet_cidr   = var.subnet_cidr
  instance_type = var.instance_type
}