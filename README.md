# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version - 3.4.1

* Rails version - 8.0.2

Create app :
`rails new standup_app -T --database=postgresql`

Add testing gem :
`bundle add rspec-rails`
Generate test :
`rails generate rspec:install`

Add tailwind and daisyUI:
`bundle add tailwindcss-rails`
`rails tailwindcss:install`

Add controller:
`rails g controller Activity mine feed`

Test github actions for linting:
`rubocop -f github`

Testing Rspec:
`rspec`

Add UUID extension:
`rails g migration enable_extension_for_uuid`

Add code in migration file:
`enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')`

Add User model:
`rails g model User name:string` 

Add time_zone:
`rails g migration AddTimeZoneToUsers time_zone:string`