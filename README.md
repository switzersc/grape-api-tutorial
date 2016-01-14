# Grape API Tutorial

This repo demonstrates how to build an API with Grape that is documented with Swagger and tested with Rspec/Airborne.

## Getting Started

To set up the project locally:

1. Clone the repo.
2. `cd` into the repo directory on your machine.
3. run `bundle install`

Next, to start the API server:

    bundle exec rackup

Now you can curl the API:

    curl localhost:9292/api/books

## Swagger

To access the Swagger doc that is generated automatically with the `grape-swagger` gem, navigate your browser to
http://localhost:9292/api/swagger_doc.

## Taking it further

When you curl the API's `books` endpoint, you will get an empty array. That's because that endpoint,
defined in `api/books.rb:15`, simply returns an empty array. If you would like to change this behavior,
modify this action.

If you would like to utilize an ORM like ActiveRecord to access and return `book` records from a database
(you can see an example of this type of behavior on `api/books.rb:10`), you will need to implement this yourself.
See [this section](https://github.com/ruby-grape/grape#activerecord-without-rails) in Grape's README
to add ActiveRecord to this project. You can also check out the `grape-activerecord` gem:
https://github.com/jhollinger/grape-activerecord

