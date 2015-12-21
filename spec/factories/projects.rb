# == Schema Information
#
# Table name: projects
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
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  code        :string(100)
#

FactoryGirl.define do
  factory :project do
    id         0
    name       "Test Project Rails"
    description "This is a test project used for unit testing"
    status_id  0
    owner_id   0
    country_id 0
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
