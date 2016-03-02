# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  title_id    :integer          default(0), not null
#  first_name  :string(100)
#  mid_name    :string(100)
#  last_name   :string(100)      not null
#  description :text
#  categories  :string(1000)
#  tags        :string(1000)
#  status_id   :integer          default(0), not null
#  owner_id    :integer          default(0), not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Member, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:member)}
  it {should validate_presence_of(:last_name)}
  it {should validate_length_of(:last_name).is_at_least(2)}
  it {should validate_presence_of(:status_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should belong_to(:status).class_name('Parameter')}  
  it {should belong_to(:owner).class_name('User')}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:member)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:member, last_name: nil)).to_not be_valid
  end
 
end
