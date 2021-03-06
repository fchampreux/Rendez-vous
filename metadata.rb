#!/usr/bin/ruby
require 'pg'
begin
  puts "start"
  puts 'Version of libpg: ' + PG.library_version.to_s
  con = PG.connect(host: 'localhost', dbname: 'rdv_app_dev', user: 'rdv_app', password: 'rdv_app')
  puts con.server_version
  pst = con.exec "SELECT * FROM users"
  pst.each do |row|
    puts "%s %s " % [ row['id'], row['email'] ]
  end
  puts 'There are %d columns ' % pst.nfields
  puts 'The column names are:'
  pst.fields.each do |f|
    puts pst.fnumber(f).to_s + ' ' + f + ' ' + pst.ftype(pst.fnumber(f)).to_s
  end 
  #puts pst.getvalue(0,0)
rescue PG::Error => e
  puts e.message
ensure
  pst.clear if pst
  con.close if con
  puts "stop"
end
