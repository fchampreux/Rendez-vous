# == Schema Information
#
# Table name: addresses
#
#  id              :integer          not null, primary key
#  address_type_id :integer          not null
#  address_name    :string(100)
#  address         :text
#  zip             :string(20)
#  city            :string(50)
#  state           :string(50)
#  country_id      :integer          default(0), not null
#  status_id       :integer          default(0)
#  active_from     :datetime         not null
#  active_to       :datetime
#  entity_type     :string           not null
#  entity_id       :integer          default(0), not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  owner_id        :integer          default(0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Address < ActiveRecord::Base
  validates :address_type_id,       presence: true
  validates :created_by,            presence: true
  validates :updated_by,            presence: true
  validates :session_id,            presence: true
  validates :status_id,             presence: true  
  validates :country_id,            presence: true
  validates :active_from,           presence: true
  validates :owner_id,              presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
end
