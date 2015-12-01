require 'grape'
require 'grape-swagger'
require_relative './books'

module API
  class Root < Grape::API
    version 'v1', using: :header, vendor: 'book-company' # this can be path, vendor header, accept-version header, or param
    format :json
    prefix :api

    mount API::Books

    add_swagger_documentation
  end
end