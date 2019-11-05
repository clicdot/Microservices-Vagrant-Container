<<<<<<< HEAD
# Micro-Service Container VM

#### v0.1beta

- Install Vagrant https://www.vagrantup.com/downloads.html
- Install VirtualBox https://www.virtualbox.org/wiki/Downloads
- Download Dev VagrantFile from GitHub git@github.com:clicdot/Microservices-Vagrant-Container.git
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
=======
# MicroService--NODE--LAMBDA--Boilerplate

This boilerplate was designed to be utilized as a Lambda or Serverless starter kit for NodeJS/Express.

To get started, just type the following command in the root directory.

```javascript
$ npm install
$ npm start
```

This application was written for use as a Lambda service.

This package contains the Claudia Serverless tool for deploying and updating deployed Lambda projects.

The purpose of this is to eliminate non-project dependencies from project dependencies. As the Dev Dependencies can easily add 100mb to the package and a Lambda package must be less than 50mb compressed.

If you compress the working _**./src**_ folder, current boilerplate is less than 12mb in compressed size.

## Build for Deployment

```javascript
$ npm run build
```

## AWS Lambda

For AWS Lambda you do not need the server host and port configuration as Lambda will provide that. So 'server.js' is not needed and only used to develop locally and test locally.

To deploy to AWS

```javascript
$ npm run lambda
```

You should see something like

```json
{
  "lambda": {
    "role": "Express-Lambda-Boilerplate-executor",
    "name": "Express-Lambda-Boilerplate",
    "region": "us-east-1"
  },
  "api": {
    "id": "ppbs0st5l2",
    "url": "https://ppbs0st5l2.execute-api.us-east-1.amazonaws.com/latest"
  }
}
```

a claudia.json file will be created in the root folder.

To update to AWS

```javascript
$ npm run lambda:update
```

To pack the application to test for size

```javascript
$ npm run lambda:pack
```

Documentation on using Serverless [Claudia Get Started](https://claudiajs.com/documentation.html)

__***Note:__ _You can use Serverless or ClaudiaJS or something else._

## dB Connectors

A plugin has been created to allow easy connection to MySQL

```text
./plugins/dbconnector.js
```

#### MySQL

> Line 13: uncomment this line.

> Set The DB Parameters in the .env file

```text
DB_CONNECTION=mysql
DB_HOST=localhost
DB_PORT=3306
DB_DATABASE=local_db
DB_USERNAME=root
DB_PASSWORD=root
```

## Development

Development instance of app uses _nodemon_ so the code can dynamically update when code changes are detected. [NodeMon Getting Started](https://github.com/remy/nodemon).

Git commits are limited by linting the code and running successful unit tests through a pre-commit hook. Please do not override this as it is not fair to others developers that have to discover and fix linting and code errors that do not belong to them.

```javascript
$ npm start
```

Server on http://localhost:{port}/api/v1

### Linting

```javascript
$ npm run lint
```

### Unit Tests

Unit test runner is TAP ([Test Anything Protocol](http://testanything.org/)).

- [Getting started with TAP](https://www.node-tap.org/basics/)
- [TAP Website](https://www.node-tap.org/)

```javascript
$ npm test
```

#### Code Coverage

```javascript
$ npm run test:coverage
```

### Load Test with Artillery

I've packaged a simple load test to demonstrate the scalabilty of nodeJS and Fastify.

The default load test run for 1 minute ata request of 100 requests per sec. The configuration file can be found in ./test-load/root.v1.yml and looks like this:

```javascript
config:
  target: 'http://localhost:{port}'
  phases:
    - duration: 60
      arrivalRate: 100
  defaults:
    headers:
scenarios:
  - flow:
    - get:
        url: "/v1/api"

```

By adjusting the _arrivalRate_ you can change the concurrent request per second. By adjusting the duration, you can stress test for a long period.

Be warned, if you are running this locally on your laptop, the load test does take  up a lot of CPU resources.

I've turned it up to 20,000 concurrent calls per second and my laptop start to crawl but I do not get any 502 or 504 errors. It runs slower but it never fails. It takes a long time to finish but it will finish and with all 200 success codes (1.2 million calls).

Unlike PHP which starts to fail around 300-400 concurrent calls per second. It thresholds up a bit to 600ish but at a failure rate of 30%-50%, throwing 502/504 errors. Nginx doesn't fail, it just stops connecting after a while because PHP times out or is unresponsive.

```javascript
$ npm run test:load
```

### Swagger

This app will auto-generate a swagger interactive documentation based on the endpoints in the project. Its pre-configured so no need to do anything, just build the endpoints using the folder & code organization.

Swagger Document on http://localhost:3200/swagger-ui-v1

_'swagger-jsdoc'_. [Getting Started](https://www.npmjs.com/package/swagger-jsdoc)

## UAT/Stage/Production Deployment

Since this is a Lambda service, you can't mock calls to the Lambda service. You either have to use AWS Lambda as a development bed or use the local server packaged for use with

```javascript
$ npm start
```

## API Uniform Response

Each API response will have a uniform response data structure. The primary structures are

- response
- data

with sub entries as follows

```json
{
  "response": {
    "code": 200,
    "id": "46489477-4eca-4a17-8f31-2197764517b4",
    "timestamp": "2019-05-29T06:53:14.125Z",
    "function": {
      "method": "GET",
      "url": "/api/v1/",
      "ip": "127.0.0.1",
      "apiVersion": "v1"
    },
    "messages": []
  },
  "data": {
    "test": "Help - V1 - get"
  }
}
```


# TODO

- Documentation on Routing and Controllers
- Documentation on ENV usage
- Documentation on Plugin (how to & usage)
- OAuth2.0 integration that supports Client Credentials
- Finish parameterizing variables that can be set in ENV or globally
- Finish Lambda service wrapper
>>>>>>> 1538303d2fccfe1f0511604d07efe6c971bab84e
