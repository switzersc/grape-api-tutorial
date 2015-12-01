require 'airborne'
require_relative '../api/root'
require 'pry'

Airborne.configure do |config|
  config.rack_app = API::Root
end

describe API::Books do
  context 'GET /api/books' do
    it 'returns 200 response' do
      get "/api/books"
      expect_status(200)
    end
    it 'returns all books' do
      get "/api/books"
      expect_json([])
    end
  end
end