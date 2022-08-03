# Jungle Plant Shop Project

> A full functionality mini e-commerce application built with Ruby and Rails 6.1. Using Active Record for database and RSpecs testing library. Admin can log in to add more products/categories to admin's dashboard. Users can sign up and log in to browse products, add products to cart and purchase with credit/debit cards.

This is my sixth project at LHL after [Lotide](https://github.com/thaian161/lotide), [TinyApp](https://github.com/thaian161/tinyApp), [Tweeter](https://github.com/thaian161/tweeter), midterm project [Bake-It-Up](https://github.com/thaian161/Bake-It-Up), and [Scheduler](https://github.com/thaian161/Scheduler-react)

## Final Product

### [👋 Watch Live Demo Here 👋](https://youtu.be/OzJA77gHJeU)

#### _Landing Page_

!["Landing Page"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/landing%20lap.png)

#### _Responsive Landing Page on Ipad_

!["Edit"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/mobile%20landing.png)

#### _About Us Page_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/about.png)

#### _User Sign Up Page_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/sign%20up%20page.png)

#### _User Log In Page_

!["Landing Page"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/login.png)

#### _Products Page for user to browse_

!["Edit"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/main%20jungle.png)

#### _User's Cart_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/my%20cart.png)

#### _Payment Window using Stripe API_

!["Landing Page"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/payment.png)

#### _Receipt Page after purchasing_

!["Edit"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/thanks%20for%20planting%20me.png)

#### _Admin Products Dashboard_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/dashboard.png)

#### _Admin Adding Product_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/new%20product.png)

#### _Admin Category Dashboard_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/category%20dash.png)

#### _Admin Adding Category_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/new%20cate.png)

#### _Admin All Count Dashboard_

!["Error"](https://github.com/thaian161/Jungle-Plant-Shop/blob/master/public/product%20count%20dashboard.png)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server
9. Jungle Plant Shop is available at https://localhost:3000

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe

> **Hope you enjoy the app and have a nice day :D**
