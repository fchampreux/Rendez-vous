# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  planned_at  :datetime
#  closing_at  :datetime
#  started_at  :datetime
#  ended_at    :datetime
#  due_at      :datetime
#  duration    :decimal(12, 2)
#  priority_id :integer          default(0)
#  mode_id     :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_planned  :boolean          default(FALSE)
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

require 'rails_helper'

RSpec.describe Action, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:action)}
  it {should validate_presence_of(:name)}
  it {should validate_length_of(:name).is_at_least(5)}
  it {should validate_presence_of(:status_id)} 
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should belong_to(:status).class_name('Parameter')}
  it {should belong_to(:mode).class_name('Parameter')}  
  it {should belong_to(:priority).class_name('Parameter')}  
  it {should belong_to(:owner).class_name('User')}

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:action)).to be_valid
  end
  it 'is invalid without a name' do
    expect(build(:action, name: nil)).to_not be_valid
  end
 
end
