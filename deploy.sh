curl -X POST 'https://api.newrelic.com/v2/applications/<app_id>/deployments.json' \
     -H 'X-Api-Key:<APIKEY>' \
     -H 'Content-Type: application/json' \
     -d \
'{
  "deployment": {
    "revision": "REVISION",
    "changelog": "Added: /v2/deployments.rb, Removed: None",
    "description": "Added a deployments resource to the v2 API",
    "user": "datanerd@example.com"
  }
}'

scp -pr -i ../ec2.rsa * ec2-user@ec2-35-164-163-26.us-west-2.compute.amazonaws.com:/home/ec2-user/app/
