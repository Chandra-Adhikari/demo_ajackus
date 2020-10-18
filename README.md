# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - ruby '2.5.1'
* Rails version - rails '6.0.3'

* Configuration:
  * git clone https://github.com/Chandra-Adhikari/demo_ajackus.git
  * cd demo_reckspace
  * bundle install

* Database creation:
  * rake db:create db:migrate db:seed

* Setup application.yml
  You need to configure config/application.yml, before running rails server.
  Run following commands to change the specified files:

  mv config/application.yml.example config/application.yml

* setup specs for test cases and check code coverage

	bundle exec rspec
