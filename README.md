# Laravel Development environment

Pre-requisite: docker and docker-compose are installed

# First Time installation
First, cd into a empty folder of choice and clone this project into it:
> $ git clone .... .

Then, clone your laravel project into the src folder:
> $ git clone your_project ./src

Next, build and instanciate the set of containers:
> $ docker-compose up --build --no-startup

Next, install the php dependencies. For this we run the composer container with the install command:
> $ docker-compose run composer install

Next, install the javascript dependencies. For this we run the npm container with the install command:
> $ docker-compose run npm install

Next, compile all css and js assets. For this we run the npm container with the run dev command:
> $ docker-compose run npm run dev

Next, run the migration scripts. for this we run the artisan container with the migrate command:
> $ docker-compose run artisan migrate

Next, generate an application key (for encryption). 
If the .env file does not exist, copy it from the .env.project or .env.example.
Then, run the artisan container with the key generate command:
> $ docker-compose run artisan key:generate

That's it, this completes the setup. To run the project, continue with the instructions in "Workflow".


# Bringup (e.g. after reboot)


# Upgrade


# Workflow
