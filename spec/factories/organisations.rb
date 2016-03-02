# == Schema Information
#
# Table name: organisations
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  code        :string(100)
#  description :text
#  categories  :string(1000)
#  tags        :string(1000)
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          default(0), not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :organisation do
    id         0
    name       "Test Organisation SA"
    description "This is a test organisation used for unit testing"
    status_id  0
    legal_id   0
    owner_id   0
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
  end

end
