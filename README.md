# Rapha_tech_test
Rapha_tech_test


# assumptions 
This solution assumes you have Terraform installed locally and have run 'aws configure' with valid IAM access key and secret key.
It also assumes you have an AWS account and have permission to create resources with Terraform. 

# Running the solution 
Clone the repo locally 
    
    git clone https://github.com/JamesCalleja/Rapha_tech_test.git

CD in to the repo
    
    cd Rapha_tech_test

Run terraform 
    
    terraform init
    
    terraform plan
    
    terraform apply --auto-approve=true

Accessing the site

    go to the url that is outputted once the terraform apply has run

    you will see a splash page that says "It works!"

Clean up

    terraform destroy --auto-approve=true
