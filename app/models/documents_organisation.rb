# == Schema Information
#
# Table name: documents_organisations
#
#  organisation_id      :integer          not null
#  document_id          :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  document_role_id     :integer          default(0), not null
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#  owner_id             :integer          not null
#



class DocumentsOrganisation < ActiveRecord::Base

### validations
  validates :organisation_id,       presence: true
  validates :document_id,       presence: true
  validates :started_at,      presence: true
  validates :organisation_role_id,  presence: true
  validates :document_role_id,   presence: true
  validates :status_id,       presence: true
  validates :owner_id,        presence: true
  validates :created_by,      presence: true
  validates :updated_by,      presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true
  belongs_to :organisation
  belongs_to :document

end
