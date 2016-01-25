# == Schema Information
#
# Table name: parameters_lists
#
#  id               :integer          not null, primary key
#  code             :string
#  name             :string
#  description      :text
#  owner_id         :integer
#  created_by       :string
#  updated_by       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          default(0), not null
#  language         :string(10)       default("en"), not null
#  is_user_specific :boolean
#  session_id       :string(100)
#

require 'rails_helper'

RSpec.describe ParametersList, type: :model do
  
  describe 'Validations'
    context 'With existing user' do
    FactoryGirl.build(:user)
    subject {FactoryGirl.build(:parameters_list)}
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(5)}
    it {should validate_presence_of(:user_id)} 
    it {should validate_presence_of(:owner_id)}
    it {should validate_presence_of(:language)}
    it {should validate_presence_of(:created_by)}  
    it {should validate_presence_of(:updated_by)}
    it {should validate_presence_of(:session_id)}
    it {should belong_to(:owner).class_name('User')}  
    it {should belong_to(:user)}

    describe 'It can be created'
    it 'has a valid factory' do
      expect(create(:parameters_list)).to be_valid
    end
    it 'is invalid without a name' do
      expect(build(:parameters_list, name: nil)).to_not be_valid
    end
  end
end
