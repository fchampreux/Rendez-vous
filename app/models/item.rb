# == Schema Information
#
# Table name: items
#
#  id            :integer          not null, primary key
#  code          :string(100)      not null
#  name          :string(100)      not null
#  description   :text
#  categories    :string(1000)
#  tags          :string(1000)
#  resource      :text
#  media_type_id :integer          default(0), not null
#  status_id     :integer          default(0), not null
#  item_type_id  :integer          default(0), not null
#  owner_id      :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#

class Item < ActiveRecord::Base
### validations
  validates :name,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id,  presence: true
  validates :owner_id,   presence: true
  validates :code,   presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true

### relations
  has_many :organisations, through: :opportunities
  has_many :projects, through: :items_projects
  has_many :documents, through: :items_documents
  has_many :items, through: :items_items

end
