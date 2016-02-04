# == Schema Information
#
# Table name: organisations
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
#  phone       :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  code        :string(100)
#

class Organisation < ActiveRecord::Base

### validations
  validates :name,       presence: true, length: { minimum: 2 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id, presence: true
  validates :legal_id, presence: true  
  validates :owner_id, presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :legal, :class_name => "Parameter", :foreign_key => "legal_id"		 # helps retrieving the parameter
#    validates :legal, presence: true
  belongs_to :country, :class_name => "Parameter", :foreign_key => "country_id"		 # helps retrieving the parameter

### relations
  has_many :organisations, through: :organisations_organisations
  has_many :members, through: :members_organisations
  has_many :projects, through: :projects_organisations
  has_many :documents, through: :documents_organisations
  has_many :actions, through: :actions_organisations
  has_many :items, through: :opportunities

end
