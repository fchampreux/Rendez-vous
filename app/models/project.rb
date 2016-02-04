# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  code        :string(100)
#

class Project < ActiveRecord::Base
  
### validations
  validates :name,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id,  presence: true
  validates :owner_id,   presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :country, :class_name => "Parameter", :foreign_key => "country_id"		# helps retrieving the parameter

### relations
  has_many :members, through: :projects_members
  has_many :organisations, through: :projects_organisations
  has_many :documents, through: :documents_projects
  has_many :actions, through: :projects_actions
  has_many :items, through: :items_projects
  has_many :projects, through: :projects_projects
  has_many :users, through: :users_projects
  
end
