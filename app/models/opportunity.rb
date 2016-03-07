# == Schema Information
#
# Table name: opportunities
#
#  organisation_id      :integer          not null
#  item_id              :integer          not null
#  member_id            :integer
#  name                 :string(100)      not null
#  code                 :string(100)
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  is_main_relation     :boolean          default(FALSE)
#  is_tariff            :boolean          default(FALSE)
#  organisation_role_id :integer          default(0), not null
#  item_role_id         :integer          default(0), not null
#  quantity             :decimal(, )      default(0.0)
#  unit_price           :decimal(, )      default(0.0)
#  discount             :decimal(, )      default(0.0)
#  note                 :text
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  owner_id             :integer          default(0), not null
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class Opportunity < ActiveRecord::Base

### validations
  validates :organisation_id,       presence: true
  validates :item_id,               presence: true
  validates :started_at,            presence: true
  validates :organisation_role_id,  presence: true
  validates :item_role_id,          presence: true
  validates :status_id,             presence: true
  validates :owner_id,              presence: true
  validates :created_by,            presence: true
  validates :updated_by,            presence: true
  validates :session_id,            presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :organisation
  belongs_to :item

end
