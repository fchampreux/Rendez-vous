class DropTable < ActiveRecord::Migration
  def change
    create_table :leads_imports do |t|
      t.string :title
      t.string :name
      t.string :first_name
      t.string :language
      t.text :description
      t.string :location
      t.string :email
      t.string :phone
      t.string :url
      t.text :note
      t.string :image_url
      t.string :role
      t.string :company
      t.string :from_date
      t.string :job_location
      t.text :job_desc
      t.string :industry
      t.string :cy_number
      t.string :cy_street
      t.string :cy_address_info
      t.string :zip
      t.string :pobox
      t.string :cy_state
      t.string :cy_country
      t.string :action

      t.timestamps null: false
    end
  end
end
