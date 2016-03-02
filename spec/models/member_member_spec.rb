
#

require 'rails_helper'

RSpec.describe MembersMember, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:members_member)}
  it {should validate_presence_of(:member_1_id)}
  it {should validate_presence_of(:member_2_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:member_1_role_id)} 
  it {should validate_presence_of(:member_2_role_id)}
  it {should belong_to(:member_1).class_name('Member')}
  it {should belong_to(:member_2).class_name('Member')}
  it {should belong_to(:owner).class_name('User')}  

  
  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:members_member)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:members_member, started_at: nil)).to_not be_valid
  end
  
end
