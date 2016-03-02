# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  categories  :string(1000)
#  tags        :string(1000)
#  planned_at  :datetime
#  closing_at  :datetime
#  started_at  :datetime
#  ended_at    :datetime
#  due_at      :datetime
#  duration    :decimal(12, 2)
#  priority_id :integer          default(0)
#  mode_id     :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_planned  :boolean          default(FALSE)
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

class Action < ActiveRecord::Base
  validates :name,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id, presence: true
  validates :mode_id, presence: true  
  validates :owner_id, presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :mode, :class_name => "Parameter", :foreign_key => "mode_id"		 # helps retrieving the parameter
#    validates :legal, presence: true
  belongs_to :priority, :class_name => "Parameter", :foreign_key => "priority_id"	 # helps retrieving the parameter
#    validates :legal, presence: true

### relations
  has_many :members, through: :actions_members
  has_many :projects, through: :projects_actions
  has_many :documents, through: :documents_actions
  has_many :organisations, through: :actions_organisations
  has_many :actions, through: :actions_actions
  has_many :users, through: :user_actions

end
