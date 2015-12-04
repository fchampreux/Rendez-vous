class LeadsImportsUpdate < ActiveRecord::Migration
  def change 
    change_table :leads_imports do |t|
      t.rename  :company, :organisation     
      t.rename  :cy_desc, :org_desc
      t.rename  :cy_address, :org_address
      t.rename  :cy_zip, :org_zip      
      t.rename  :cy_city, :org_city     
      t.rename  :cy_state, :org_state    
      t.rename  :cy_country, :org_country  
      t.rename  :cy_website, :org_website 
      t.rename  :cy_email, :org_email    
      t.rename  :cy_phone, :org_phone    
      t.rename  :cy_type, :org_type     
      t.rename  :cy_legal, :org_legal
    end

      add_index "leads_imports", [:created_at], name: "leads_imports_idx_created_at"
      add_index "leads_imports", [:organisation], name: "leads_imports_idx_organisation"
      add_index "leads_imports", [:last_name], name: "leads_imports_idx_last_name"
      add_index "leads_imports", [:org_country, :org_state, :org_city], name: "leads_imports_idx_geo"
      add_index "leads_imports", [:role], name: "leads_imports_idx_role"
      add_index "leads_imports", [:action], name: "leads_imports_idx_action"
  
  end
end
