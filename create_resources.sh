#!/bin/bash

# Function to create a security group
create_security_group() {
    group_name=$1
    description=$2
    security_group_id=$(aws ec2 create-security-group --group-name "$group_name" --description "$description" --query 'GroupId' --output text)
    echo "Created security group with ID: $security_group_id"
    echo "$security_group_id"
}

# Function to create an EC2 instance
create_ec2_instance() {
    instance_type=$1
    ami_id=$2
    security_group_id=$3
    instance_id=$(aws ec2 run-instances --instance-type "$instance_type" --image-id "$ami_id" --security-group-ids "$security_group_id" --query 'Instances[0].InstanceId' --output text)
    echo "Created EC2 instance with ID: $instance_id"
    echo "$instance_id"
}

# Main function
main() {
    # Define parameters
    group_name="MySecurityGroup"
    description="Security group for my EC2 instance"
    instance_type="t2.micro"
    ami_id="ami-12345678"  # Replace with a valid AMI ID

    # Create a security group
    security_group_id=$(create_security_group "$group_name" "$description")

    # Create an EC2 instance
    instance_id=$(create_ec2_instance "$instance_type" "$ami_id" "$security_group_id")

    # Output resource IDs
    echo "Security Group ID: $security_group_id"
    echo "EC2 Instance ID: $instance_id"
}

# Run the main function
main
