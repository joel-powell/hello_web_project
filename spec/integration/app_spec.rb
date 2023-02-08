require 'rack/test'
require_relative '../../app'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context 'GET /hello' do
    it 'returns the hello html file' do
      response = get('/hello')

      expected_response = <<~HTML.chomp
        <html>
        <head></head>
        <body>
        <h1>Hello!</h1>
        </body>
        </html>
      HTML

      expect(response.body).to include(expected_response)
    end
  end

  context 'GET /names' do
    it 'returns 200 OK' do
      response = get('/names')
      expected_response = 'Julia, Mary, Karim'

      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end

  context 'POST /sort-names' do
    it 'returns 200 OK' do
      response = post(
        '/sort-names',
        names: 'Alice,Joe,Julia,Kieran,Zoe'
      )
      expected_response = 'Alice,Joe,Julia,Kieran,Zoe'

      expect(response.status).to eq(200)
      expect(response.body).to eq(expected_response)
    end
  end
end
