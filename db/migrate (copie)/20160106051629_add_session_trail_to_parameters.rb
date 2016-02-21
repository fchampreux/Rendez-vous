class AddSessionTrailToParameters < ActiveRecord::Migration
  def change
    change_table("parameters_lists") do |t|
      t.string :session_id, limit: 100
    end
    change_table("parameters") do |t|
      t.string :session_id, limit: 100
    end

  end
end
