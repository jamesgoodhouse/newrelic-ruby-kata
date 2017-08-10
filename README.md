newbrelic-ruby-kata
==================

Using New Relic and AWS, see how many things you can find and fix to make this app perform fast!

Note: This is a minor modification of the [New Relic Ruby Kata](https://github.com/newrelic/newrelic-ruby-kata)

Step 1
-------
Fork the code form [this repo](https://github.com/newrelic/newrelic-ruby-kata)

Step 2
-------
Follow instruction on how to setup and connect to your AWS instance.

Step 3
-------
Load the sample DB locally:

    bundle exec rake db:create
    pg_restore --verbose --clean --no-acl --no-owner -h localhost -U $USER -d newrelic-ruby-kata_development public/sample-data.dump
    bundle exec rails s

Step 4
-------
Setup Synthetics Monitors to look at all the pages in your Ruby Kata.

Step 5
-------
Work in teams to determine which sections of code are in need of improvement.

Use good git practices to fix the code. Setup deploy markers so that you can see clearly who made what changes when to the code. Rollback changes if needed.

Solve as many of the Katas as you can. There are seven distinct Katas in this application that can be torn apart and fixed by using your awesome dev abilities and the deep metrics that New Relic provides.

Step 6
-------
Deploying is easy
`gem install httparty`
`export APP_ID=<appid>`
`export API_KEY=<api_key>`
`ruby deploy.rb`
