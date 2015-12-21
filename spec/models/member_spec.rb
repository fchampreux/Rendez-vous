# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  title_id    :integer
#  first_name  :string(100)
#  mid_name    :string(100)
#  last_name   :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  mobile      :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

require 'rails_helper'

RSpec.describe Member, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:member)}
  it {should validate_presence_of(:last_name)}
  it {should validate_length_of(:last_name).is_at_least(5)}
  it {should validate_presence_of(:status_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:member)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:member, name: nil)).to_not be_valid
  end
 
end
