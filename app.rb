require 'sinatra/base'

class Application < Sinatra::Base
  get '/hello' do
    erb(:hello)
  end

  get '/names' do
    'Julia, Mary, Karim'
  end

  post '/submit' do
    name, message = params.values_at(:name, :message)
    "Thanks #{name}, you sent this message: #{message}"
  end

  post '/sort-names' do
    names = params[:names]
    names.split(',').sort.join(',')
  end
end
