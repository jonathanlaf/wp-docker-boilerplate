# WordPress Docker Boilerplate

Hi! I'm Jonathan Lafleur and I decided that I would share little gems that I create for my clients that help me develop project for them.  

You'll find in this repo my actual boilerplate that I use to develop WordPress **plugins** & **themes**. It use docker-compose to manage **wordpress (with xdebug)** + **mysql** + **adminer** & **mailhog**.

If also support `host.docker.internal` on a linux host.

## How to use
    docker-compose up
* WordPress: http://localhost:8080
* Adminer: http://localhost:9090
* Mailhog: http://localhost:8025

## Services Configuration
All the configuration reside in the **.env** file. if you want to disable wp-debug, remove the key, wordpress image only verify if the key exist and not the value.

## IDE Configuration
https://www.jetbrains.com/help/phpstorm/configuring-xdebug.html#integrationWithProduct

https://www.jetbrains.com/help/phpstorm/configuring-remote-interpreters.html#additional-configuration-options