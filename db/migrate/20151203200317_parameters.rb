class Parameters < ActiveRecord::Migration
  def change
    change_table :parameters_lists do |t|
      t.integer :user_id, default: 0,    null: false
      t.string :language, default: "en", null: false, limit: 10
    end
  
  
    change_table :parameters do |t|
      t.rename :param_code, :code
      t.rename :param_value, :value
      t.integer :user_id, default: 0,    null: false
      t.string :language, default: "en", null: false, limit: 10
    end

      add_index :parameters_lists, [:code, :user_id, :language], name: "parameters_lists_idx", unique: true
      add_index :parameters, [:code, :user_id, :language], name: "parameters_idx", unique: true
  
  end
end
