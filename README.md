# Test challenge for Lemoney

## Instructions to execute the presented application:

### Heroku

This app is also hosted on Heroku, and to access it, go to:

   https://lemoney-offer.herokuapp.com/

### Local

To execute the app locally, just follow these regular steps to execute a Rails app:

If you're not using RVM, check if you're using Ruby 2.6.6

    $ bundle install
    $ rails db:create
    $ rails db:migrate
    $ rails db:seed
    $ rails s
    

### To execute the automated tests, just run the rspec command:

    $ rspec

### To login to the admin area of the app, login as the admin user created by the seeds:

    email: admin@example.com
    senha: 123456

    To acess Admin Dashboard go localhost:3000/admin or https://lemoney-offer.herokuapp.com/admin after log. You will be able to do CRUD and check offers starts and ends dates. 
