# == Schema Information
#
# Table name: members_members
#
#  member_id      :integer          not null
#  member_id        :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  main_relation    :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  member_role_id :integer          default(0), not null
#  member_role_id   :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


class MembersMember < ActiveRecord::Base

### validations
  validates :member_1_id,       presence: true
  validates :member_2_id,       presence: true
  validates :started_at,      presence: true
  validates :member_1_role_id,  presence: true
  validates :member_2_role_id,   presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :member_1, :class_name => "Document", :foreign_key => "member_1_id"
  belongs_to :member_2, :class_name => "Document", :foreign_key => "member_2_id"

end
