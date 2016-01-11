ENV['RACK_ENV'] = 'test'

require_relative '../server'
require 'rspec'
require 'rack/test'

describe 'The hello docker sinatra application' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'says hello' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('hello world from docker!This time deployed with travis 3!')
  end
end
