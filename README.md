# Jungle

A mini e-commerce application built with Rails 4.2. This version was completed as part of the LightHouse Labs Web Development BootCamp. It was built from a template made for purposes of teaching Rails by example.

## Inside the Jungle
Here you see our Jungle Home Screen! 
![home screen](https://github.com/C-Swain/Jungle/blob/master/screenshots/home.png?raw=true)

This is the order record created after the strip is successful.
![order](https://github.com/C-Swain/Jungle/blob/master/screenshots/Order.png?raw=true)

When a product is out of stock it shows as sold out! 
![sold out](https://user-images.githubusercontent.com/88508941/142292416-b80c586e-d864-430e-90a2-8f3fce2a43d0.png)

About Us
![about]https://github.com/C-Swain/Jungle/blob/master/screenshots/about.png?raw=true


## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Testing 
* RSpec
* Poltergeist/Capybara
