# == Schema Information
#
# Table name: organisations
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  code        :string(100)
#  description :text
#  categories  :string(1000)
#  tags        :string(1000)
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          default(0), not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Organisation, type: :model do

  describe 'Validations'
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
    
  describe 'It can be created'

    it 'has a valid factory' do
      expect(build(:organisation)).to be_valid
    end
    it 'is invalid without a name' do
      expect(build(:organisation, name: nil)).to_not be_valid
    end  
  
end  
