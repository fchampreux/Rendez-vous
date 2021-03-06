# == Schema Information
#
# Table name: addresses
#
#  id              :integer          not null, primary key
#  address_type_id :integer          not null
#  address_name    :string(100)
#  address         :text
#  zip             :string(20)
#  city            :string(50)
#  state           :string(50)
#  country_id      :integer          default(0), not null
#  status_id       :integer          default(0)
#  active_from     :datetime         not null
#  active_to       :datetime
#  entity_type     :string           not null
#  entity_id       :integer          default(0), not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  owner_id        :integer          default(0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :address, :class => 'Address' do
    id          0
    address_type_id 0
    address_name        "Test Address Rails"
    status_id   0
    owner_id    0
    country_id  0
    active_from "2016-01-01"
    created_by  "Fred"
    updated_by  "Fred"
    session_id  "TestRun-01"
    entity_type "Organisation"
    entity_id   0
    
  end

end
