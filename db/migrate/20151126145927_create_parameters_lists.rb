class CreateParametersLists < ActiveRecord::Migration
  def change
    create_table :parameters_lists do |t|

      t.timestamps null: false
    end
  end
end
