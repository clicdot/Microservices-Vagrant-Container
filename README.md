# Micro-Service Container VM

#### v0.1beta

- Install Vagrant https://www.vagrantup.com/downloads.html
- Install VirtualBox https://www.virtualbox.org/wiki/Downloads
- Download Dev VagrantFile from GitHub https://github.com/clicdot/Microservices-Vagrant-Container.git
- Create a folder on your local computer
- Place VagrantFile into folder
- Change to directory created, using terminal
- Place VagrantFile into folder
- Type "vagrant status" in command line you should see something like this

```
Current machine states:

default poweroff (virtualbox)

The VM is powered off. To restart the VM, simply run `vagrant up`
```

- Type "vagrant up"
- Type "vagrant ssh"
- You app environment will be found in the "/apps" folder

```text
vagrant up
```

```text
vagrant ssh
```

```text
cd /apps/
```

The vagrant container will have all tools needed in order to create containers in either Python 2/3, NodeJS, and PHP.

It's not required to use the vagrant container for creating micro-services containers. However, if you want to keep your local computer uncluttered, this is a good way to keep the environments, apps, and settings isolated from you local computer.

Installed Apps

> Python 2

> Python 3

> PIP/PIP3

> NodeJS 11.9.0

> NPM 6.5.0

> Serverless

> Docker 18.09.1

> Kubernetes 1.13

> kubectl

> Ruby

> Puppet

> DotNet Core 2.2

> Docker-Composer-Generator (alpha)

## Python: Containers

Instructions

1. Choose between Python 2 & Python 3
2. Install Python
3. Check for PIP "py -m pip --version" or "python -m pip --version"for Python 2; "py3 -m pip3 --version" or "python3 -m pip3 --version" for Python 3
4. If you don't see something like "pip 18.0 from /Library/Python/2.7/site-packages/pip-18.0-py2.7.egg/pip (python 2.7)", you don't have pip installed
5. Install PIP: "py -m pip install --upgrade pip" or "python -m pip install --upgrade pip" for Python 2; "py3 -m pip install --upgrade pip" or "python3 -m pip install --upgrade pip" for Python 3
6. Install virtualenv "sudo pip install virtualenv"
7. install Bottle "sudo pip install bottle"

```text
There are many different frameworks you can use such as Bottle, Flask, CherryPy, Django, TurboGears, Web2Py, Pyramid, etc...

We want to use a micro-framework so its not bloated with feature we will never use or need. However, some micro frameworks do not have a http server as part of it and you will need to use a http server with the framework. Flask is an example of a micro framework that requires a http server, such as Gunicorn, Tornado, Dash, or Sanic. Bottle comes packaged with it so you don't need to import another package. I prefer bottle because it's been in production for about 10 years and designed for optimal performance.

You can use Flask but will have to decide on a http server such as Tornado or Gunicorn. Both were released almost 10 years ago. However Tornado has been around much longer as a scalable private code until it was purchased in 2009 by Facebook and released as open source by apache foundation, in 2009. So Tornado would be the better choice.
```

```text
Creating a virtualenv for a micro service

1. Create a project folder <Project-Name>
2. Change to project folder
3. If you are opting for Python 2, you will need to install virtualenv with "sudo apt -y install virtualenv"
4. Setup virtualenv
    . Python 2: virtualenv env or virtualenv venv
    . Python 3: python3 -m venv venv
5. Activate Python container: in project folder
    . env/bin/activate
    . venv/bin/activate
6. Now install pip packages you need
    . pip install bottle
    . NodeJS: Containers
```

## NodeJS: Containers

### Instructions

1. Install NodeJS & NPM
2. Full https://nodejs.org/dist/v11.9.0/node-v11.9.0.pkg
3. Lite https://nodejs.org/dist/v10.15.1/node-v10.15.1.pkg
4. Create project folder
5. Change to folder
6. Type "npm init"
6. Specify "package name:"
7. Specify "version:"
8. Specify "description:" → Optional
9. Specify "entry point:"
10. Specify "test command:"
11. Specify "git repository:"
12. Specify "keywords:"
13. Specify "author:"
14. Specify "license:"
15. Confirm package.json preview

```text
The most important part of creating NodeJS apps is to include npm packages like express or fastify. So its basically an orchestration of npm packages and custom code.

To install local packages the nodeJS application will use:

npm i -<S><D> <package-name>

or

npm i -<S><D> <package-name>@<version>

You must elect 'S' or 'D' not both.

ex: npm i -S fastify@latest

<S> will install and configure the package.json with the package in the "dependencies" object

<D> will install and configure the package.json with the package in the "devDependencies" object

The execution of the application will be configured in the "scripts" object

"scripts": {
  "test": "<unit test runner>",
  "start": "<nodemon> -w ./src app.js",
  "build:uat": "NODE_ENV=UAT <pm2> process.json app.js",
  "build:prod": "NODE_ENV=PROD <pm2> process.json app.js"
},

The script section is very important in deploying the application into UAT or Prod
```

Git Clone [NODE-Fastify-Lambda-Boilerplate](https://github.com/clicdot/NODE-Fastify-Lambda-Boilerplate.git)

```javascript
$ npm i
$ npm start
```
Run Tests

```javascript
$ npm test
```

Run Lint

```javascript
$ npm run lint
```