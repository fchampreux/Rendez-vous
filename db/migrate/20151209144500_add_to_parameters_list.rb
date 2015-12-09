class AddToParametersList < ActiveRecord::Migration
  def change
    change_table("parameters_lists") do |t|
      t.boolean :is_user_specific
    end
    change_table("parameters") do |t|
      t.boolean :is_user_specific
    end

  end
end
