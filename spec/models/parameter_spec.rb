# == Schema Information
#
# Table name: parameters
#
#  id                 :integer          not null, primary key
#  parameters_list_id :integer
#  name               :string
#  description        :text
#  active_from        :datetime
#  active_to          :datetime
#  parent_list        :string
#  value              :string
#  code               :string
#  owner_id           :integer
#  created_by         :string
#  updated_by         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer          default(0), not null
#  language           :string(10)       default("en"), not null
#  is_user_specific   :boolean
#  session_id         :string(100)
#

require 'rails_helper'

RSpec.describe Parameter, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:parameter)}
  it {should validate_presence_of(:name)}
  it {should validate_length_of(:name).is_at_least(5)}
  it {should validate_presence_of(:user_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:language)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:parameter)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:parameter, name: nil)).to_not be_valid
  end
 
end
