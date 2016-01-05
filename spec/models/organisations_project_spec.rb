# == Schema Information
#
# Table name: organisations_projects
#
#  organisation_id      :integer          not null
#  project_id           :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  project_role_id      :integer          default(0), not null
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

RSpec.describe OrganisationsProject, type: :model do
  
  describe 'Validations'
  subject {FactoryGirl.build(:organisations_project)}
  it {should validate_presence_of(:status_id)}
  it {should validate_presence_of(:owner_id)}
  it {should validate_presence_of(:created_by)}  
  it {should validate_presence_of(:updated_by)}
  it {should validate_presence_of(:session_id)}  

  describe 'It can be created'
  it 'has a valid factory' do
    expect(build(:organisations_project)).to be_valid
  end
  it 'is invalid without a start_date' do
    expect(build(:organisations_project, started_at: nil)).to_not be_valid
  end
  
end
