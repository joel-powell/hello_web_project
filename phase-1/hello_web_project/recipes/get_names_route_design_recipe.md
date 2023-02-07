# GET /names Route Design Recipe

## 1. Design the Route Signature

You'll need to include:

* the HTTP method
* the path
* any query parameters (passed in the URL)
* or body parameters (passed in the request body)

GET
/names

## 2. Design the Response

```
Julia, Mary, Karim
```

## 3. Write Examples

_Replace these with your own design._

```
# Request:

GET /names

# Expected response:

Julia, Mary, Karim
```

## 4. Encode as Tests Examples

```ruby
# file: spec/integration/app_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /names" do
    it 'returns 200 OK' do
      response = get('/names')

      expect(response.status).to eq(200)

      expected_response = 'Julia, Mary, Karim'

      expect(response.body).to eq(expected_response)
    end
  end
end
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.