# POST /sort-names Route Design Recipe

## 1. Design the Route Signature

You'll need to include:

* the HTTP method
* the path
* any query parameters (passed in the URL)
* or body parameters (passed in the request body)

Request:
POST http://localhost:9292/sort-names

With body parameters:
names=Joe,Alice,Zoe,Julia,Kieran

## 2. Design the Response

The route might return different responses, depending on the result.

For example, a route for a specific blog post (by its ID) might return `200 OK` if the post exists, but `404 Not Found`
if the post is not found in the database.

Your response might return plain text, JSON, or HTML code.

_Replace the below with your own design. Think of all the different possible responses your route will return._

When body param 'names' is 'Joe,Alice,Zoe,Julia,Kieran'

```
Alice,Joe,Julia,Kieran,Zoe
```

## 3. Write Examples

```
# Request:
POST http://localhost:9292/sort-names

# With body parameters:
names=Joe,Alice,Zoe,Julia,Kieran

# Expected response (sorted list of names):
Alice,Joe,Julia,Kieran,Zoe
```

## 4. Encode as Tests Examples

```ruby
# file: spec/integration/app_spec.rb

require "spec_helper"

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

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
```

## 5. Implement the Route

Write the route and web server code to implement the route behaviour.

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=resources%2Fsinatra_route_design_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->