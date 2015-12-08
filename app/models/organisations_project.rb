# == Schema Information
#
# Table name: organisations_projects
#
#  organisation_id      :integer          not null
#  project_id           :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  project_role_id      :integer          default(0), not null
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#

class OrganisationsProject < ActiveRecord::Base

### validations
  validates :started_at, presence: true
  validates :created_by, presence: true
  validates :updated_by, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		# helps retrieving the parameter
    validates :status, presence: true
  belongs_to :organisation_role, :class_name => "Parameter", :foreign_key => "organisation_role_id"		# helps retrieving the parameter
    validates :organisation_role, presence: true
  belongs_to :project_role, :class_name => "Parameter", :foreign_key => "project_role_id"		# helps retrieving the parameter
    validates :project_role, presence: true
  belongs_to :organisation
    validates :project, presence: true
  belongs_to :project
    validates :organisation, presence: true
end
