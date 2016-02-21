# == Schema Information
#
# Table name: items_projects
#
#  project_id      :integer          not null
#  item_id         :integer          not null
#  started_at      :datetime         not null
#  ended_at        :datetime
#  status_id       :integer          default(0), not null
#  project_role_id :integer          not null
#  item_role_id    :integer          default(0), not null
#  note            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  main_relation   :boolean          default(FALSE)
#  owner_id        :integer          not null
#

class UsersProject < ActiveRecord::Base

### validations
  validates :project_id,      presence: true
  validates :user_id,         presence: true
  validates :started_at,      presence: true
  validates :project_role_id, presence: true
  validates :user_role_id,    presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :project
  belongs_to :user

end
