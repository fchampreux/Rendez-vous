# == Schema Information
#
# Table name: users_documents
#
#  user_id          :integer          not null
#  document_id      :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  is_main_relation :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  user_role_id     :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  document_role_id :integer          not null
#

class UsersDocument < ActiveRecord::Base

### validations
  validates :document_id,      presence: true
  validates :user_id,         presence: true
  validates :started_at,      presence: true
  validates :document_role_id, presence: true
  validates :user_role_id,    presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  validates :session_id,        presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :document
  belongs_to :user

end
