class IndexesForTables < ActiveRecord::Migration
  def change
    change_table :actions do |t|
      t.binary :is_planned, default: false
    end
 
      add_index "actions", [:is_planned, :planned_at], name: "actions_idx_planned_at"
      add_index "actions", [:priority_id], name: "actions_idx_priority"
      add_index "actions", [:mode_id], name: "actions_idx_mode"
      add_index "actions", [:status_id], name: "actions_idx_status"
      
      add_index "actions_documents", [:action_id, :started_at ], name: "actions_documents_idx"    
      add_index "actions_documents", [:document_id, :started_at ], name: "documents_actions_idx"  
  
      add_index "actions_members", [:action_id, :started_at ], name: "actions_members_idx"    
      add_index "actions_members", [:member_id, :started_at ], name: "members_actions_idx"  
  
      add_index "actions_organisations", [:action_id, :started_at ], name: "actions_organisations_idx"    
      add_index "actions_organisations", [:organisation_id, :started_at ], name: "organisations_actions_idx"  
  
      add_index "actions_projects", [:action_id, :started_at ], name: "actions_projects_idx"    
      add_index "actions_projects", [:project_id, :started_at ], name: "projects_actions_idx"  
  
      add_index "documents_items", [:item_id, :started_at ], name: "items_documents_idx"    
      add_index "documents_items", [:document_id, :started_at ], name: "documents_items_idx"  
  
      add_index "documents_members", [:member_id, :started_at ], name: "members_documents_idx"    
      add_index "documents_members", [:document_id, :started_at ], name: "documents_members_idx"  
  
      add_index "documents_organisations", [:organisation_id, :started_at ], name: "organisations_documents_idx"    
      add_index "documents_organisations", [:document_id, :started_at ], name: "documents_organisations_idx"  
  
      add_index "documents_projects", [:project_id, :started_at ], name: "projects_documents_idx"    
      add_index "documents_projects", [:document_id, :started_at ], name: "documents_projects_idx"  
  
      add_index "items_projects", [:item_id, :started_at ], name: "items_projects_idx"    
      add_index "items_projects", [:project_id, :started_at ], name: "projects_items_idx"  
  
      add_index "members_organisations", [:member_id, :started_at ], name: "members_organisations_idx"    
      add_index "members_organisations", [:organisation_id, :started_at ], name: "organisations_members_idx"  
  
      add_index "members_projects", [:member_id, :started_at ], name: "members_projects_idx"    
      add_index "members_projects", [:project_id, :started_at ], name: "projects_members_idx"  
  
      add_index "opportunities", [:item_id, :started_at ], name: "opportunities_items_idx"    
      add_index "opportunities", [:member_id, :started_at ], name: "members_opportunities_idx"  
  
      add_index "organisations_projects", [:organisation_id, :started_at ], name: "organisations_projects_idx"    
      add_index "organisations_projects", [:project_id, :started_at ], name: "projects_organisations_idx"  
    
  end
end
