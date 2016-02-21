# == Schema Information
#
# Table name: documents_actions
#
#  document_id      :integer          not null
#  action_id        :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  main_relation    :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  document_role_id :integer          default(0), not null
#  action_role_id   :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


class DocumentsDocument < ActiveRecord::Base

### validations
  validates :document_1_id,       presence: true
  validates :document_2_id,       presence: true
  validates :started_at,      presence: true
  validates :document_1_role_id,  presence: true
  validates :document_2_role_id,   presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :document_1, :class_name => "Document", :foreign_key => "document_1_id"
  belongs_to :document_2, :class_name => "Document", :foreign_key => "document_2_id"

end
