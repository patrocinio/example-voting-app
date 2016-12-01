Instavote
=========

Getting started
---------------

Download [Docker for Mac or Windows](https://www.docker.com).

Run in this directory:

    $ docker-compose up

The app will be running at [http://localhost:5000](http://localhost:5000), and the results will be at [http://localhost:5001](http://localhost:5001).

Architecture
-----

![Architecture diagram](architecture.png)

* A Python webapp which lets you vote between two options
* A Redis queue which collects new votes
* A .NET worker which consumes votes and stores them in…
* A Postgres database backed by a Docker volume
* A Node.js webapp which shows the results of the voting in real time

#test

## Running on Bluemix

Some additional steps are required to run this application on the Bluemix Container Service, using the Docker Compose client.

1.  Set your Docker environment variables to point to the Bluemix Container Service.

`eval $(cf ic init | grep "export DOCKER")`

2.  Set the correct Docker Registry endpoint.

`export DTR="registry.ng.bluemix.net/$(cf ic namespace get)"`

3.  Copy over the necessary images that are not built using this example

`cf ic cpi redis:alpine ${DTR}/redis:alpine`
`cf ic cpi postgres:9.4 ${DTR}/postgres:9.4`

4.  Run Docker Compose to start your applications

`docker-compose -f docker-compose-bmx.yml up -d`

5.  Attach public IP addresses to the Vote and Result container instances

`cf ic ip request`
`cf ic ip bind [RETURNED_IP_ADDRESS] examplevotingapp_vote_1`
