# == Schema Information
#
# Table name: projects_projects
#
#  project_1_id      :integer          not null
#  project_2_id      :integer          not null
#  started_at        :datetime         not null
#  ended_at          :datetime
#  is_main_relation  :boolean          default(FALSE)
#  status_id         :integer          default(0), not null
#  project_1_role_id :integer          default(0), not null
#  project_2_role_id :integer          default(0), not null
#  note              :text
#  created_by        :string(100)      not null
#  updated_by        :string(100)      not null
#  session_id        :string(100)      not null
#  owner_id          :integer          default(0), not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ProjectsProject < ActiveRecord::Base

### validations
  validates :project_1_id,       presence: true
  validates :project_2_id,       presence: true
  validates :started_at,      presence: true
  validates :project_1_role_id,  presence: true
  validates :project_2_role_id,   presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :session_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :project_1, :class_name => "Project", :foreign_key => "project_1_id"
  belongs_to :project_2, :class_name => "Project", :foreign_key => "project_2_id"

end
