class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|

      t.timestamps null: false
    end
  end
end
