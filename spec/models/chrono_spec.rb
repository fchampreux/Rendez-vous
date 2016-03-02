# == Schema Information
#
# Table name: chronos
#
#  id         :integer          not null, primary key
#  name       :string(100)      not null
#  code       :string(100)      not null
#  counter    :integer          default(0), not null
#  nb_digits  :integer          default(6), not null
#  template   :string(50)       default("code;-;counter"), not null
#  status_id  :integer          default(0), not null
#  owner_id   :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  created_by :string(100)      not null
#  updated_by :string(100)      not null
#  session_id :string(100)      not null
#

require 'rails_helper'

RSpec.describe Chrono, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:chrono)}
  it {should validate_presence_of(:name)}
  it {should validate_length_of(:name).is_at_least(5)}
  it {should validate_presence_of(:status_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should belong_to(:status).class_name('Parameter')}
  it {should belong_to(:owner).class_name('User')}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:action)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:action, name: nil)).to_not be_valid
  end
 
end
