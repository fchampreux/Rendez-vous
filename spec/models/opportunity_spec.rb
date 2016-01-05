# == Schema Information
#
# Table name: opportunities
#
#  organisation_id      :integer          not null
#  item_id              :integer          not null
#  member_id            :integer
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  item_role_id         :integer          default(0), not null
#  quantity             :decimal(, )      default(0.0)
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#  owner_id             :integer          not null
#

require 'rails_helper'

RSpec.describe Opportunity, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:opportunity)}
  it {should validate_presence_of(:organisation_id)}
  it {should validate_presence_of(:item_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:organisation_role_id)}
  it {should validate_presence_of(:item_role_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}  

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:opportunity)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:opportunity, started_at: nil)).to_not be_valid
  end
  
end
