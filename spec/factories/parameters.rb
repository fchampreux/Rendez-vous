# == Schema Information
#
# Table name: parameters
#
#  id                 :integer          not null, primary key
#  parameters_list_id :integer
#  name               :string
#  description        :text
#  active_from        :datetime
#  active_to          :datetime
#  parent_list        :string
#  value              :string
#  code               :string
#  owner_id           :integer
#  created_by         :string
#  updated_by         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer          default(0), not null
#  language           :string(10)       default("en"), not null
#

FactoryGirl.define do
  factory :parameter do
    id                 0
    parameters_list_id 0
    name               "Test parmeter"
    description        "This is a test parameter used for unit testing"
    status_id          0
    owner_id           0
    created_by         "Fred"
    updated_by         "Fred"
    session_id         "TestRun-01"
    
  end

end
