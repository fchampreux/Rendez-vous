# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  title_id    :integer
#  first_name  :string(100)
#  mid_name    :string(100)
#  last_name   :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  mobile      :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

class Member < ActiveRecord::Base
  validates :last_name,  presence: true, length: { minimum: 2 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id, presence: true
  validates :owner_id, presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true

### relations
  has_many :prganisations, through: :members_organisations
  has_many :projects, through: :members_projects
  has_many :documents, through: :documents_members
  has_many :actions, through: :actions_members
#  has_many :items, through: :opportunities

end
