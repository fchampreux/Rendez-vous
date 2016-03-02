# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  title_id               :integer          default(0), not null
#  first_name             :string(100)      not null
#  last_name              :string(100)      not null
#  login                  :string(100)      not null
#  email                  :string           default(""), not null
#  categories             :string(1000)
#  tags                   :string(1000)
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:user)}
  it {should validate_presence_of(:title_id)}
  it {should validate_presence_of(:first_name)}
  it {should validate_presence_of(:last_name)}
  it {should validate_presence_of(:login)}
#  it {should validate_presence_of(:status_id)}
#  it {should validate_presence_of(:owner_id)}
#  it {should validate_presence_of(:created_by)}  
#  it {should validate_presence_of(:updated_by)}
#  it {should validate_presence_of(:session_id)}
  
  describe 'It can be created'
  it 'has a valid factory' do
    expect(create(:user)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:users, last_name: nil)).to_not be_valid
  end
  
end
