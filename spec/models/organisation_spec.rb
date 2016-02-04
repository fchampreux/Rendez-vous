# == Schema Information
#
# Table name: organisations
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  code        :string(100)
#

require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe 'Validations'
    context 'With existing parameters and user' do
#    FactoryGirl.build(:parameter)
#    FactoryGirl.build(:user)
    subject {FactoryGirl.build(:organisation)}
    it {should validate_presence_of(:name)}
    it {should validate_length_of(:name).is_at_least(2)}
    it {should validate_presence_of(:created_by)}  
    it {should validate_presence_of(:updated_by)}
    it {should validate_presence_of(:session_id)}
    it {should validate_presence_of(:status_id)}
    it {should validate_presence_of(:legal_id)}
    it {should belong_to(:status).class_name('Parameter')}
    it {should belong_to(:legal).class_name('Parameter')}  
    it {should belong_to(:owner).class_name('User')}
    it {should belong_to(:country).class_name('Parameter')}    
    end
    
  describe 'It can be created'

  context 'With existing parameters and user' do
#    FactoryGirl.build(:parameters_list)
#    FactoryGirl.build(:parameter)
#    FactoryGirl.build(:user)

    it 'has a valid factory' do
      expect(build(:organisation)).to be_valid
    end
    it 'is invalid without a name' do
      expect(build(:organisation, name: nil)).to_not be_valid
    end
  end
  
  
end  
