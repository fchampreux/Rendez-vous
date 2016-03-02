# == Schema Information
#
# Table name: phones
#
#  id            :integer          not null, primary key
#  phone_type_id :integer          not null
#  phone_name    :string(100)
#  phone         :text
#  country_id    :integer          not null
#  entity_type   :string           not null
#  entity_id     :integer          not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#  status_id     :integer          default(0)
#  active_from   :datetime         not null
#  active_to     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Phone < ActiveRecord::Base
  validates :phone_type_id,       presence: true
  validates :created_by,          presence: true
  validates :updated_by,          presence: true
  validates :session_id,          presence: true
  validates :status_id,           presence: true 
#  validates :owner_id,            presence: true
  validates :active_from,         presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true
end
