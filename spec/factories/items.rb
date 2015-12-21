# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  code        :string(100)      not null
#  name        :string(100)      not null
#  description :text
#  resource    :text
#  media_id    :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

FactoryGirl.define do
  factory :item do
    id         0
    name       "Test Item Rails"
    code       "TEST"
    description "This is a test item used for unit testing"
    status_id  0
    owner_id   0
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
