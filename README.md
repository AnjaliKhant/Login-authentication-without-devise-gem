# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

    ruby 2.4.0
    Rails 5.1.6

1) Create a user model with a name, email and password_digest (all strings) by entering the following command into the command line:  rails generate model user name email password_digest.

2) Run rake db:migrate

3) Add following routes to route.rb

        get '/login' => 'sessions#new'
        post '/login' => 'sessions#create'
        get '/logout' => 'sessions#destroy'
        resource :sessions

        get '/signup' => 'users#new'
        post '/users' => 'users#create'
        resources :users


3) Create User controller and add new and create action 
  after that create the view file
  
4) Go to Your gemfile add bcrypt gem
  We need bcrypt to securely store passwords in our database.

5) Go to the User model file and add has_secure_password. This is the line of code that gives our User model authentication methods via bcrypt.

        has_secure_password

6) Run bundle install

7) Create a sessions controller. This is where we create (login) and destroy (logout) sessions.

        class SessionsController < ApplicationController
            def new
            end

            def create
            end

            def destroy
            end
          end

 8) Create a form for user's to login with.
 
