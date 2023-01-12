**Simple Web App Deployment**

This playbook will deploy a simple web app and Nging proxy with SSL enabled. 

1. Set webapp site < domains > in:
    * `config/sites/` 
    * `config/generate-nginx-certs.sh`
    * `./hosts`

2. Run `ansible-playbook webapp-deploy.yml`