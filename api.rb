require 'sinatra'
require 'github/markup'

get '/' do
  'Hello world!'
end

post '/' do
  filename = 'README.md'
  markdown = request.body.read
  html = GitHub::Markup.render(filename, markdown)
  status 200
  body html
end
