
# AWS CLI Resource Creation Script

## Overview
This project contains a Bash script to automate the creation of AWS resources using the AWS Command Line Interface (CLI). The script specifically creates:
- A **Security Group**.
- An **EC2 Instance**.

The script captures and outputs the IDs of the created resources for further use.

---

## Features
- Automates resource creation to save time.
- Captures and displays created resource IDs.
- Flexible parameters for customization (e.g., instance type, security group name).

---

## Prerequisites
Before using this script, ensure the following:
1. **AWS CLI** is installed and configured with valid credentials.
2. You have an AWS account with sufficient permissions.
3. Replace the placeholder `ami_id` in the script with a valid AMI ID from your AWS region.

---

## Script Components

### 1. Functions
#### `create_security_group`
Creates a security group and stores its ID.  
**Parameters**:
- `group_name`: The name of the security group.
- `description`: A description of the security group.

#### `create_ec2_instance`
Creates an EC2 instance and stores its ID.  
**Parameters**:
- `instance_type`: The type of EC2 instance (e.g., `t2.micro`).
- `ami_id`: The AMI ID to be used for the instance.
- `security_group_id`: The ID of the security group to associate with the instance.

---

## Usage Instructions
1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/repository-name.git
   ```
2. Navigate to the project directory:
   ```bash
   cd repository-name
   ```
3. Grant execution permissions to the script:
   ```bash
   chmod +x create_resources.sh
   ```
4. Execute the script:
   ```bash
   ./create_resources.sh
   ```

---

## Example Output
Upon successful execution, the script will output:
```
Created security group with ID: sg-xxxxxxxx
Created EC2 instance with ID: i-xxxxxxxx
Security Group ID: sg-xxxxxxxx
EC2 Instance ID: i-xxxxxxxx
```

---

## Notes
- Adjust parameters like instance type or security group name inside the script before execution.
- If you encounter any issues, ensure your AWS CLI credentials and region are properly configured:
  ```bash
  aws configure
  ```

---

## License
This project is licensed under the MIT License. Feel free to use and modify it as needed.

---
