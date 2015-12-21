# == Schema Information
#
# Table name: members_organisations
#
#  organisation_id      :integer          not null
#  member_id            :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  member_role_id       :integer          not null
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#

require 'rails_helper'

RSpec.describe MembersOrganisation, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:member_organisation)}
  it {should validate_presence_of(:organisation_id)}
  it {should validate_presence_of(:member_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:organisationt_role_id)}
  it {should validate_presence_of(:member_role_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}  

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:members_organisation)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:members_organisation, started_at: nil)).to_not be_valid
  end
  
end
