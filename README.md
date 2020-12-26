# Laravel Development Environment

Credit goes to Andrew Schmelyun.

## Pre-requisite 
Docker and docker-compose need to be installed on your environment

## Project setup
First, cd into a empty folder of choice and clone this project into it:
> $ git clone https://github.com/tp-space/laravel-docker-dev.git .

Then, create a subfolder named src. Clone your laravel project into that folder:
> $ git clone \<your_project src\>

Next, build and instanciate the set of containers:
> $ docker-compose up --build --no-start

Next, install the php dependencies. For this we run the composer container with the install command:
> $ docker-compose run composer install

Next, install the javascript dependencies. For this we run the npm container with the install command:
> $ docker-compose run npm install

Next, compile all css and js assets. For this we run the npm container with the run dev command:
> $ docker-compose run npm run dev

Next, generate an application key (for encryption). 
If the .env file does not exist, copy it from the .env.project or .env.example.
Then, run the artisan container with the key generate command:
> $ docker-compose run artisan key:generate

Next, run the migration scripts. for this we run the artisan container with the migrate command:
> $ docker-compose run artisan migrate

That's it, this completes the setup. To run the project, continue with the instructions in "Workflow".


## Project launch and stop
To run the project, simply start the nginx and php containers.

### Run containers in the foreground 
To run them in the foreground, enter below command:
> $ docker-compose up php nginx

To stop them, simply hit Ctrl+C in the terminal. Alternatively enter in another terminal:
> $ docker-compose stop nginx php

### Run containers in the background
To run them in the background, enter below command:
> $ docker-compose start php nginx

To obtain container logs, enter the following commands:
> $ docker logs nginx

> $ docker logs php

To stop the containers, issue below command:
> $ docker-compose stop nginx php
 
## Development Workflow
You can edit the project files on the host. The changes will be picked up by the containers.
If you need to use npm or artisan commands, use the container variants instead:
> $ docker-compose run npm <command>

> $ docker-compose run artisan <command>

Examples are:
> $ docker-compose run artisan make:migration create\_new\_table\_project (to create a new migration)

> $ docker-compose run artisan migrate (to migrate the database)

> $ docker-compose run npm run watch (to recompile css and js assets automatically)

## Cleanup
In case you want to clean the environment, process as follow.

Stop and teardown all containers:
> $ docker-compose down

Remove all unused docker assets (containers, images, networks, build caches):
> $ docker system prune -a

Check the cleaning of the docker environment:
> $ docker system df

