# Loracle API

## Pipeline

This application uses a variant of Git-Flow to prevent environmental variables from being hard coded into the production environment. All development should be on branches, which will automatically deploy to staging servers once the request is merged. Once they clear staging the application will be manually pushed to production.

## Running Locally

This application is Dockerised. Clone the repo, navigate to the apps directory before running:

` $ docker-compose build
    > ...
    > Successfully tagged loracle-api_web:latest`
    
to initialise seed data run:

` $ docker-compose run --rm web bin/rails db:setup`

Tihs will create a user with the email `dave@123.com` and password `securepassword123` that contains some basic information. 

Then the containers need to be started. Run `db` in a seperate container to clear the console output. then run the `web` container:

`$ docker-compose up -d db
   > ...
   > Creating loracle-api_db_1 ... done
 $ docker-compose up web
   > loracle-api_db_1 is up-to-date
   > Creating loracle-api_web_1 ... done
   > Attaching to loracle-api_web_1
   > web_1  | => Booting Puma
   > web_1  | => Rails 6.1.4 application starting in development 
   > web_1  | => Run `bin/rails server --help` for more startup options
   > web_1  | Puma starting in single mode...
   > web_1  | * Puma version: 5.3.2 (ruby 3.0.0-p0) ("Sweetnighter")
   > web_1  | *  Min threads: 5
   > web_1  | *  Max threads: 5
   > web_1  | *  Environment: development
   > web_1  | *          PID: 9
   > web_1  | * Listening on http://0.0.0.0:3000
   > web_1  | Use Ctrl-C to stop`

The API is now being hosted at `localhost:3000`. Make sure you run the API first so it definitely gets the `localhost:3000` host.
