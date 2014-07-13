Description
-----------

Docker file to create an image for **Mayan EDMS**

Instructions
------------

To build you own image use::

    $ sudo docker build -t mayan-edms . 
    
Run the container with::

    $ sudo docker run -d -p 8000:8000 mayan-edms
