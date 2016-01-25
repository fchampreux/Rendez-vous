# == Schema Information
#
# Table name: documents
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  resource    :text
#  media_id    :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  code        :string(100)
#  chrono      :string(100)
#

class Document < ActiveRecord::Base

### validations
  validates :name,       presence: true, length: { minimum: 2 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id, presence: true
  validates :owner_id, presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :country, :class_name => "Parameter", :foreign_key => "country_id"		 # helps retrieving the parameter

### relations
  has_many :organisations, through: :documents_organisations
  has_many :projects, through: :documents_projects
  has_many :members, through: :documents_members
  has_many :actions, through: :actions_documents
  has_many :items, through: :documents_items  
end
