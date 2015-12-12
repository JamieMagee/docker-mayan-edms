Description
-----------

Docker file to create an image for **Mayan EDMS**

Instructions
------------

Building the image
------------------

Clone the repository with::

    git clone https://gitlab.com/mayan-edms/mayan-edms-docker.git

Change to the directory of the cloned repository::

    cd mayan-edms-docker

Execute Docker's build command::

    docker build -t mayanedms/monolithic


Deploying
---------

Deploy the Mayan EDMS Docker image::

    docker run --name postgres -e POSTGRES_DB=mayan -e POSTGRES_USER=mayan -e POSTGRES_PASSWORD=mysecretpassword -v /var/lib/postgresql/data -d postgres
    docker run --name redis -d redis
    docker run --name mayan-edms -p 80:80 --link postgres:postgres --link redis:redis -e POSTGRES_DB=mayan -e POSTGRES_USER=mayan -e POSTGRES_PASSWORD=mysecretpassword -v /usr/local/lib/python2.7/dist-packages/mayan/media -d mayanedms/monolithic

After the **Mayan EDMS** container finishes initializing (about 5 minutes), it will
be available by browsing to http://127.0.0.1. You can inspect the initialization
with::

    docker logs mayan-edms


Using Docker Compose
--------------------
Clone the repository with::

    git clone https://gitlab.com/mayan-edms/mayan-edms.git

Change to the directory of the cloned repository::

    cd mayan-edms-docker

Launch the entire stack (Postgres, Redis, and Mayan EDMS) using::

    docker-compose -f docker-compose.yml up -d

After the **Mayan EDMS** container finishes initializing (about 5 minutes), it will
be available by browsing to http://127.0.0.1. You can inspect the initialization
with::

    docker logs mayanedms_mayan-edms_1
