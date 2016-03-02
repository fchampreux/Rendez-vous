# == Schema Information
#
# Table name: users_users
#
#  user_id      :integer          not null
#  user_id           :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  user_role_id :integer          not null
#  user_role_id      :integer          default(0), not null
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#  owner_id             :integer          not null
#

require 'rails_helper'

RSpec.describe UsersUser, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:users_user)}
  it {should validate_presence_of(:user_1_id)}
  it {should validate_presence_of(:user_2_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:user_1_role_id)} 
  it {should validate_presence_of(:user_2_role_id)}
  it {should belong_to(:user_1).class_name('User')}
  it {should belong_to(:user_2).class_name('User')}
  it {should belong_to(:owner).class_name('User')}  
  
  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:users_user)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:users_user, started_at: nil)).to_not be_valid
  end
  
end
