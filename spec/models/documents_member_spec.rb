# == Schema Information
#
# Table name: documents_members
#
#  member_id        :integer          not null
#  document_id      :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  is_main_relation :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  member_role_id   :integer          default(0), not null
#  document_role_id :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe DocumentsMember, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:documents_member)}
  it {should validate_presence_of(:member_id)}
  it {should validate_presence_of(:document_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:member_role_id)}
  it {should validate_presence_of(:document_role_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)} 
  it {should belong_to(:document).class_name('Document')}
  it {should belong_to(:member).class_name('Member')}
  it {should belong_to(:owner).class_name('User')}  
 

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:documents_member)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:documents_member, started_at: nil)).to_not be_valid
  end
  
end
