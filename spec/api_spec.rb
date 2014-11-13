require_relative 'spec_helper'

describe 'API' do
  it 'should return "Hello World!"' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello world!')
  end
  it 'should return markdown' do
    post '/', "* One\n* Two"
    expect(last_response).to be_ok
    expect(last_response.body).to eq("<ul>\n<li>One</li>\n<li>Two</li>\n</ul>\n")
  end
end
