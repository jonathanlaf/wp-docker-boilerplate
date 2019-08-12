# WordPress Docker Boilerplate

Hi! I'm Jonathan Lafleur and I decided that I would share little gems that I create for my clients that help me develop project for them.  

You'll find in this repo my actual boilerplate that I use to develop WordPress **plugins** & **themes**. It use docker-compose to manage **wordpress** + **mysql** + **adminer** & **mailhog**.

## How to use
    docker-compose up
* WordPress: http://localhost:8080
* Adminer: http://localhost:9090
* Mailhog: http://localhost:8025

## Configuration
All the configuration reside in **docker-compose.yml** all you need to configure if needed is the environment variables 

* MYSQL_DATABASE 
* MYSQL_USER 
* MYSQL_PASSWORD 
* WORDPRESS_DB_NAME 
* WORDPRESS_DB_USER 
* WORDPRESS_DB_PASSWORD

##### \* Please not that they must match in order to work. If you change MYSQL_* you need to update WORDPRESS_DB_* accordingly.
If you want to change the port you can also do it through docker-compose.yml  but you'll have to also update the code in `mu-plugins/mailhog.php`  to match the mailhog smtp port.
