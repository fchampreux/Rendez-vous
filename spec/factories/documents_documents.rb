# == Schema Information
#
# Table name: documents_documents
#
#  document_1_id      :integer          not null
#  document_2_id      :integer          not null
#  started_at         :datetime         not null
#  ended_at           :datetime
#  is_main_relation   :boolean          default(FALSE)
#  status_id          :integer          default(0), not null
#  document_1_role_id :integer          default(0), not null
#  document_2_role_id :integer          default(0), not null
#  note               :text
#  created_by         :string(100)      not null
#  updated_by         :string(100)      not null
#  session_id         :string(100)      not null
#  owner_id           :integer          default(0), not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :documents_document do
    document_1_id         0
    document_2_id       0
    document_1_role_id    0
    document_2_role_id  0
    status_id         0
    owner_id          0
    started_at "2015-01-01" 
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
