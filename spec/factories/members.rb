# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  title_id    :integer
#  first_name  :string(100)
#  mid_name    :string(100)
#  last_name   :string(100)      not null
#  description :text
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

FactoryGirl.define do
  factory :member do
    id         0
    last_name   "Test Member Rails"
    description "This is a test member used for unit testing"
    status_id  0
    owner_id   0
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
