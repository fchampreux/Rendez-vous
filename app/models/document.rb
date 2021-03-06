# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  name          :string(100)      not null
#  code          :string(100)
#  chrono        :string(100)
#  description   :text
#  categories    :string(1000)
#  tags          :string(1000)
#  resource      :string(1000)
#  media_type_id :integer          default(0), not null
#  chrono_id     :integer          default(0)
#  is_template   :boolean          default(FALSE)
#  status_id     :integer          default(0), not null
#  owner_id      :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#

class Document < ActiveRecord::Base

### validations
  validates :name,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id,  presence: true
  validates :owner_id,   presence: true
  validates :media_type_id,   presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :media_type, :class_name => "Parameter", :foreign_key => "media_type_id"		 # helps retrieving the parameter

### relations
  has_many :organisations, through: :documents_organisations
  has_many :projects, through: :documents_projects
  has_many :members, through: :documents_members
  has_many :actions, through: :documents_actions
  has_many :documents, through: :documents_documents
  has_many :items, through: :items_documents
  has_many :users, through: :users_documents
end
