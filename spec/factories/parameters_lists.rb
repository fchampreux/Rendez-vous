# == Schema Information
#
# Table name: parameters_lists
#
#  id               :integer          not null, primary key
#  code             :string
#  name             :string
#  description      :text
#  owner_id         :integer
#  created_by       :string
#  updated_by       :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer          default(0), not null
#  language         :string(10)       default("en"), not null
#  is_user_specific :boolean
#

FactoryGirl.define do
  factory :parameters_list do
    id                 0
    name               "Test parmeters list"
#    code               "TEST_LIST"
    description        "This is a test list used for unit testing"
    owner_id           0
    created_by         "Fred"
    updated_by         "Fred"
    session_id         "TestRun-01"
    user_id            0
    language           "en"
    is_user_specific   false
    
  end

end
