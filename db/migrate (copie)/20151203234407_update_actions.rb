class UpdateActions < ActiveRecord::Migration
  def change
    change_table :actions do |t|
    t.remove :is_planned
    t.boolean :is_planned, default: false
    end
  end
end
