# == Schema Information
#
# Table name: organisations_organisations
#
#  organisation_1_id      :integer          not null
#  organisation_2_id      :integer          not null
#  started_at             :datetime         not null
#  ended_at               :datetime
#  is_main_relation       :boolean          default(FALSE)
#  status_id              :integer          default(0), not null
#  organisation_1_role_id :integer          default(0), not null
#  organisation_2_role_id :integer          default(0), not null
#  note                   :text
#  created_by             :string(100)      not null
#  updated_by             :string(100)      not null
#  session_id             :string(100)      not null
#  owner_id               :integer          default(0), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'rails_helper'

RSpec.describe OrganisationsOrganisation, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:organisations_organisation)}
  it {should validate_presence_of(:organisation_1_id)}
  it {should validate_presence_of(:organisation_2_id)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}
  it {should validate_presence_of(:started_at)}
  it {should validate_presence_of(:organisation_1_role_id)} 
  it {should validate_presence_of(:organisation_2_role_id)}
  it {should belong_to(:organisation_1).class_name('Organisation')}
  it {should belong_to(:organisation_2).class_name('Organisation')}
  it {should belong_to(:owner).class_name('User')}  

  
  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:organisations_organisation)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:organisations_organisation, started_at: nil)).to_not be_valid
  end
  
end
