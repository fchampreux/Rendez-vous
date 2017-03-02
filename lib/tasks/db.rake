namespace :db do
    desc 'Create database schemas before going for the first migration'
    task init: ['db:drop','db:create'] do
    ActiveRecord::Base.connection.execute("CREATE SCHEMA rdv_app AUTHORIZATION rdv_app")
    ActiveRecord::Base.connection.execute("CREATE SCHEMA rdv_dwh AUTHORIZATION rdv_app")
    puts 'Database initialised'
    end
  end
    