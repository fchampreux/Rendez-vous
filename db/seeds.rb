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
  User.create(id: -1, login: 'Undefined', password: 'This_Is_An_Undefined_User', password_confirmation: 'This_Is_An_Undefined_User', is_admin: 0, last_name: 'User', first_name: 'Undefined', description: 'Undefined user', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', email: 'support@opendataquality.org', title_id: 0, status_id: 0, owner_id: 0, session_id: '0-Run')
  User.create(login: 'Admin', password: 'CRMAdmin', password_confirmation: 'CRMAdmin', is_admin: 1, last_name: 'Administrator', first_name: 'Rendez-vous', description: 'Admin user', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', email: 'support@opendataquality.org', title_id: 0, status_id: 0, owner_id: 0, session_id: '0-Run')
end

puts "Seeding parameters lists"
if ParametersList.count==0
  puts "Initialising parameters lists"
  ParametersList.create(id: -1, name: 'Undefined list', description: 'This list contains undefined values', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: false, owner_id: 0)
  ParametersList.create(id: 1, name: 'List of statuses', description: 'This list contains statuses allowed values', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: false, owner_id: 0)
  ParametersList.create(id: 2, name: 'List of display parameters', description: 'This list contains display settings for users', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: true, owner_id: 0)
  ParametersList.create(id: 3, name: 'List of languages', description: 'This list contains values for languages', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: true, owner_id: 0)
  ParametersList.create(id: 4, name: 'List of field types', description: 'This list contains data types for fields', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', is_user_specific: true, owner_id: 0)
end

puts "Seeding parameters"
if Parameter.count==0
  puts "Initialising parameters"
  Parameter.create(id: -1, name: 'Undefined', description: 'Undefined parameter', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: -1)
  Parameter.create(id: 1,  name: 'New', description: 'Status is New', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 1)
  Parameter.create(id: 2,  name: 'Active', description: 'Status is Active', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 1)
  Parameter.create(id: 3,  name: 'Inactive', description: 'Status is Inactive', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 1)
  Parameter.create(id: 4,  name: 'Obsolete', description: 'Status is Obsolete', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 1)
  Parameter.create(id: 5,  name: 'Nb of lines', description: 'Number of lines to display in lists', param_value: '10', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 6,  name: 'Currency', param_value: '€', description: 'Sets the currency for financial risk calculation', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 7,  name: 'Duration unit', param_value: 'minutes', description: 'Sets the duration unit for workload calculation', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 8,  name: 'Logo filename', param_value: 'ODQ_Logo.png', description: 'Selects the logo image to display', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 9,  name: 'Logo splash', param_code: 'D', param_value: 'ODQ_Logo_compact_144.png', description: 'Condensed logo', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 10,  name: 'Tag 1-Green light', param_code: 'green.png', param_value: '90', description: 'Sets the threshold for displaying a green light', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 11,  name: 'Tag 2-Yellow light', param_code: 'yellow.png', param_value: '60', description: 'Sets the threshold for displaying a yellow light', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 12,  name: 'Tag 3-Red light', param_code: 'red.png', param_value: '0', description: 'Sets the threshold for displaying a red light', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 13,  name: 'Tag 4-Grey light', param_code: 'grey.png', param_value: '0', description: 'Sets the threshold for displaying a grey light', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 2)
  Parameter.create(id: 14,  name: 'English translation', param_code: 'English', param_value: ':en', description: 'Translation language', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 3)
  Parameter.create(id: 15,  name: 'Traductions Française', param_code: 'Français', param_value: ':fr', description: 'Translation language', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 3)
  Parameter.create(id: 16,  name: 'Traduzioni in italiano', param_code: 'Italiano', param_value: ':it', description: 'Translation language', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 3)
  Parameter.create(id: 17,  name: 'Übersetzung auf deutsch', param_code: 'Deutsch', param_value: ':de', description: 'Translation language', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 3)
  Parameter.create(id: 18,  name: 'String', param_code: 'A', param_value: '1', description: 'String values', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
  Parameter.create(id: 19,  name: 'Numeric', param_code: 'N', param_value: '2', description: 'Numeric values', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
  Parameter.create(id: 20,  name: 'Date', param_code: 'D', param_value: '3', description: 'Date values', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
  Parameter.create(id: 21,  name: 'Date', param_code: 'T', param_value: '4', description: 'Text Field', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
  Parameter.create(id: 22,  name: 'Date', param_code: 'I', param_value: '5', description: 'Image', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
  Parameter.create(id: 23,  name: 'Date', param_code: 'O', param_value: '6', description: 'Object', active_from: '2000-01-01', active_to: '2100-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', parameters_list_id: 4)
end

pust "Seeding default objects"
if Organisation.count==0
  puts "Initialising organisation"
  Organisation.create(id: -1, name: 'Undefined', description: 'Undefined organisation', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Member.count==0
  puts "Initialising member"
  Member.create(id: -1, name: 'Undefined', description: 'Undefined member', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Project.count==0
  puts "Initialising project"
  Project.create(id: -1, name: 'Undefined', description: 'Undefined project', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Action.count==0
  puts "Initialising action"
  Action.create(id: -1, name: 'Undefined', description: 'Undefined action', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Item.count==0
  puts "Initialising item"
  Item.create(id: -1, name: 'Undefined', description: 'Undefined item', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Document.count==0
  puts "Initialising document"
  Document.create(id: -1, name: 'Undefined', description: 'Undefined document', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Opportunity.count==0
  puts "Initialising opportunity"
  Opportunity.create(id: -1, name: 'Undefined', description: 'Undefined opportunity', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Phone.count==0
  puts "Initialising phone"
  Phone.create(id: -1, name: 'Undefined', description: 'Undefined phone', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end
if Address.count==0
  puts "Initialising address"
  Address.create(id: -1, name: 'Undefined', description: 'Undefined address', active_from: '2000-01-01', active_to: '2000-01-01', created_by: 'Rake', updated_by: 'Rake', created_at: '2000-01-01', updated_at: '2000-01-01', status_id: -1, owner_id: -1)
end