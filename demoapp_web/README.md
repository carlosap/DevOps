##Install NodeJs

```
sudo apt install nodejs
```

##Install NVM (Node Version Management)
(make sure to update to nodejs 12)
https://github.com/nvm-sh/nvm#install--update-script

```
nvm install 12
nvm use 12
```

##Install Yarn

```
https://classic.yarnpkg.com/en/docs/install/#debian-stable
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install yarn
```

##Install Nginx Server

https://dev.to/xarala221/the-easiest-way-to-deploy-a-react-web-application-2l8a

```
$ sudo apt update
$ sudo apt upgrade
$ sudo apt install nginx
```

#DevOps and Test Automation
The objective of this exercise is to utilize an existing web app that was build in ReactJs (similar to the client). To avoid additional cost and resources,
we can exercise these techniques in the same Jenkins server (as we are still waiting to be onboarded with the client). Make sure you are able to install Nginx server
and that you are able to test your website deployment. This [link](https://dev.to/xarala221/the-easiest-way-to-deploy-a-react-web-application-2l8a) provides some information on
setting up your static files. Also, make sure you are able to open your ports on the cloud provider you are working with. Recommend to watch these two small videos:

- 1- Nginx Initial Setup.mp4
- 2- Nginx Stop, Build and Start Servert.mp4

example of deployment local prior running test automation with Selenium Grid

```
cd webproject_folder
sudo systemctl stop nginx
yarn build
sudo systemctl start nginx
```

Note: the URL will be utilzed as "parameter" when the Selenium Grid scripts run. 

#Test Web Automaiton with Seleniun Grid
Continue....


To Build and Host the Project to host on 80 :  
:  docker-compose up -d 
