# Rapha_tech_test
Rapha_tech_test


# assuptions 
This solution assumes you have Terraform installed locally and have run 'aws configure' with valid IAM access key and secretly key.
It also assumes you have an AWS account and have permission to create resources with Terraform. 

# Running the solution 
Clone the repo localy 
    
    git clone https://github.com/JamesCalleja/Rapha_tech_test.git

CD in to the repo
    
    cd Rapha_tech_test

Run terraform 
    
    terraform init
    
    terraform plan
    
    terraform apply --auto-approve=true

Go to you AWS management console and go to the ECS section
Click on the Raph_app service > task tab > task GUID 
copy the public IP address and enter it into a web browser 'http://IP'

you will see a splash page that says "It works!"
