# For Heroku?

web: unicorn -p $PORT -c ./config/unicorn.rb
worker: QUEUE=* bundle exec rake resque:work

# web: bundle exec puma -C config/puma.rb
# worker: QUEUE=* bundle exec rake resque:work
# scheduler: bundle exec rake resque:scheduler

# heroku ps:scale scheduler=1
# heroku ps:scale web=1
# heroku ps:scale scheduler=1

# heroku config:set RESQUE_WEB_HTTP_BASIC_AUTH_USER=user RESQUE_WEB_HTTP_BASIC_AUTH_PASSWORD=secret
