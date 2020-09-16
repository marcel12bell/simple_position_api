# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
2.7.1

* System dependencies
postgresql installed and running

* Configuration
check for correct postgresql port (5432)
and pg_hba.conf if needed...

* Database creation
bundle install
rake db:setup
rake db:migrate

* Database initialization
Data used from https://kvb.koeln/service/open_data.html for seed.rb
rake db:seed

* Example
rails s

curl --header "Content-Type: application/json" \
  --request GET \
  --data '{"longitude":6.8939,"latitude":51.127785787}' \
  127.0.0.1:3000/api/v1/stations/search_by_position

