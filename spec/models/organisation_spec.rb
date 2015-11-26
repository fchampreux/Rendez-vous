# == Schema Information
#
# Table name: organisations
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Organisation, type: :model do
  subject {create(:organisation)}
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name).is_at_least(5) }
  it { should validate_presence_of(:owner_id) }
  it { should validate_presence_of(:status_id) }
  it { should validate_presence_of(:legal_id) }
end
