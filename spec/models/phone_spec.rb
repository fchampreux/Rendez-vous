# == Schema Information
#
# Table name: phones
#
#  id            :integer          not null, primary key
#  phone_type_id :integer          not null
#  phone_name    :string(100)
#  phone         :text
#  country_id    :integer          not null
#  entity_type   :string           not null
#  entity_id     :integer          not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#  status_id     :integer          default(0)
#  active_from   :datetime         not null
#  active_to     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'rails_helper'

RSpec.describe Phone, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:phone)}
  it {should validate_presence_of(:phone_type_id)}
#  it {should validate_presence_of(:country_id)} 
#  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should validate_presence_of(:active_from)}
  it {should belong_to(:status).class_name('Parameter')}  


  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:phone)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:phone, active_from: nil)).to_not be_valid
  end
end
