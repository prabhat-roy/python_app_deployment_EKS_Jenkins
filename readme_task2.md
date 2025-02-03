Steps for task 2
-------------------------------------------------------------------------------
Step 1 : Step 1 : User needs to clone the repository from https://github.com/prabhat-roy/particle41.git

Step 2 : Create a user in AWS IAM console and provide AdministratorAccess policy. Also generate a 
credential to authenticate with terraform

Step 3 : Download and install AWS cli and terraform to create the infrastructure

Step 4 : Run aws configure and provide the credentials generated from step 2.

Step 5 : Navigate to Terraform directory and modify the value in terraform.tfvars file to customize

Step 6 : Run terraform init to initialize

Step 7 : Run terraform validate to check everything

Step 8 : Run terraform plan to generate the plan

Step 9 : Run Terraform apply -auto-approve to create the infrastructure

Step 10: When finished, copy the content mentioned in the last line of the output which is the initial admin password of the Jenkins

Step 11 : Visit the URL as part of terraform output to login into Jenkins and sonarqube

Step 12 : With the help of the password (step 10), create a user in Jenkins and then create the pipelines. We will create three pipelines, one is to create and delete Kubernetes cluster, another one is for deployment of the application and last one is to delete resources in Kubernetes.

Step 13 : Login to sonarqube url and login with admin/admin creadential. Need to change the password after first login. 

Step 14 : Generate a credential in sonarqube to be used in jenkins
 
Step 15 : Go to Jenkins and then go to manage Jenkins -> plugins and add the sonarqube plugin
 
Step 16 : Go to manage Jenkins -> credentials and add a credential of sonarqube of type secret text and put the token from sonarqube. 
 
Step 17 : Got to manage Jenkins -> System and configure sonarqube details. Since sonarqube is also running in Jenkins server, so the IP will be 127.0.0.1. And also select the credential from the dropdown.
 
Step 18 : Go to manage Jenkins -> tools and add sonarqube scanner
 
Step 19 : From the dashboard, go to new item and create a pipeline to create Kubernetes cluster. Provide a name and choose pipeline. 
 
Step 20 : Scroll down and select “This project is paramaterized” and click on add parameter button
 
Step 21 : Select Choice parameter from the dropdown 
 
Step 22 : Provide the name and choices as per below
 
Step 23 : scroll down and provide the details of the pipeline. Definition will be Pipeline script from SCM, URL will be https://github.com/prabhat-roy/particle41.git , branch will be main and script will be Jenkinsfile_Kubernetes_Cluster (as per below) and save it.
 
 
Step 24 : from the pipeline page, Click on build with parameters and select apply action from the dropdown and click on build button to run the pipeline. It will take around 15 – 20 minutes to complete. 
 
Step 25 : From the dashboard, create another pipeline (without parameter) and the script path will be “Jenkinsfile_Kubernetes_Deployment”. It is for application deployment in the Kubernetes cluster. After completing above step, run this pipeline to deploy.
 

Step 26 : From the dashboard, create another pipeline (without parameter) and the script path will be “Jenkinsfile_Kubernetes_Resource_Delete”. Its for deleting of Kubernetes resources created in above steps. 

Step 27 : All the pipelines are created.
 
Step 28 : Copy the load balancer url (from step 25) and paste in any browser to get the output.
 
Step 29 : Go to sonarqube page to check the status.
 
