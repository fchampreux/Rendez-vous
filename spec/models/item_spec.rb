# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  code        :string(100)      not null
#  name        :string(100)      not null
#  description :text
#  resource    :text
#  media_id    :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

require 'rails_helper'

RSpec.describe Item, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:item)}
  it {should validate_presence_of(:name)}
  it {should validate_length_of(:name).is_at_least(5)}
  it {should validate_presence_of(:code)}
  it {should validate_presence_of(:status_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:item)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:item, name: nil)).to_not be_valid
  end
 
end
