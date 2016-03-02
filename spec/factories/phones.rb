# == Schema Information
#
# Table name: phones
#
#  id            :integer          not null, primary key
#  phone_type_id :integer          not null
#  phone_name    :string(100)
#  phone         :text
#  country_id    :integer          not null
#  entity_type   :string           not null
#  entity_id     :integer          not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#  status_id     :integer          default(0)
#  active_from   :datetime         not null
#  active_to     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

FactoryGirl.define do
  factory :phone do
    id            0
    phone_name    "Test Phone Rails"
    phone_type_id 0
    status_id     0
#    owner_id     0
    country_id    0
    active_from   "2016-01-01"
    created_by    "Fred"
    updated_by    "Fred"
    session_id    "TestRun-01"
    entity_type   "Organisation"
    entity_id     0
    
  end

end
