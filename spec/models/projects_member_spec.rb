# == Schema Information
#
# Table name: projects_members
#
#  project_id       :integer          not null
#  member_id        :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  is_main_relation :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  project_role_id  :integer          default(0), not null
#  member_role_id   :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe ProjectsMember, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:projects_member)}
  it {should validate_presence_of(:member_id)}
  it {should validate_presence_of(:project_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}  
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:member_role_id)}
  it {should validate_presence_of(:project_role_id)}
  it {should belong_to(:member).class_name('Member')}
  it {should belong_to(:project).class_name('Project')}
  it {should belong_to(:owner).class_name('User')}  

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:projects_member)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:projects_member, started_at: nil)).to_not be_valid
  end
  
end
