class CreateActionsMembers < ActiveRecord::Migration
  def change
    create_table :actions_members do |t|

      t.timestamps null: false
    end
  end
end
