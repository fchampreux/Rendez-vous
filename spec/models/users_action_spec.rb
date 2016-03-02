# == Schema Information
#
# Table name: users_actions
#
#  user_id          :integer          not null
#  action_id        :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  is_main_relation :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  user_role_id     :integer          default(0), not null
#  action_role_id   :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          default(0), not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe UsersAction, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:users_action)}
  it {should validate_presence_of(:action_id)}
  it {should validate_presence_of(:user_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}  
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:action_role_id)}
  it {should validate_presence_of(:user_role_id)}
  it {should belong_to(:user).class_name('User')}
  it {should belong_to(:action).class_name('Action')}
  it {should belong_to(:owner).class_name('User')}  

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:users_action)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:users_action, started_at: nil)).to_not be_valid
  end
  
end
