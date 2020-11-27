set :user, "danbooru"
set :rails_env, "production"
set :delayed_job_workers, 8
append :linked_files, ".env.production"

server "192.168.0.21", :roles => %w(web app cron), :primary => true

set :newrelic_appname, "Danbooru"
after "deploy:finished", "newrelic:notice_deployment"
