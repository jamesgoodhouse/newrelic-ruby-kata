
require 'httparty'
commit = `git rev-parse --short HEAD`
puts commit
author = `git log --pretty=format:"%ae" -1`
puts author
description = `git log --pretty=format:"%s" -1`
puts description

api_key = "#{ENV['API_KEY']}"
app_id = "#{ENV['APP_ID']}"
puts api_key
puts app_id


urlstring_to_post = "https://api.newrelic.com/v2/applications/#{app_id}/deployments.json"
puts urlstring_to_post.to_s
@result = HTTParty.post(urlstring_to_post, 
    :body => { :deployment => {
                  :revision => "#{commit}",
                  :changelog => "#{description}",
                  :description => "#{description}",
                  :user => "#{author}"
                }
             }.to_json,
    :headers => { 'Content-Type' => 'application/json', 'X-Api-Key' => "#{api_key}"} )