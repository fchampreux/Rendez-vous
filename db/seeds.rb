# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding users"
if User.count == 0
  puts "Creating admin user"
  User.create(id: 0, login: 'Admin', password: 'CRMAdmin', password_confirmation: 'CRMAdmin', is_admin: 1, last_name: 'Administrator', first_name: 'Rendez-vous', description: 'Admin user', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', email: 'support@opendataquality.org', title_id: 0, status_id: 0, owner_id: 0, session_id: '0-Run')
end

puts "Seeding parameters lists"
if ParametersList.count==0
  puts "Initialising parameters lists"
  ParametersList.create(id: 0, name: 'Undefined list', description: 'This list contains undefined values', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: false, owner_id: 0)
  ParametersList.create(id: 1, name: 'List of statuses', description: 'This list contains statuses allowed values', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: false, owner_id: 0)
end

puts "Seeding parameters"
if Parameter.count==0
  puts "Initialising parameters"
  Parameter.create(id: 0, name: 'Undefined', description: 'Undefined parameter', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 0)
end
