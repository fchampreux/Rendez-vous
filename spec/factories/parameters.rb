# == Schema Information
#
# Table name: parameters
#
#  id                 :integer          not null, primary key
#  parameters_list_id :integer
#  name               :string(100)
#  description        :text
#  active_from        :datetime
#  active_to          :datetime
#  parent_list        :string(100)
#  value              :string(100)
#  code               :string(100)
#  owner_id           :integer          default(0), not null
#  created_by         :string(100)
#  updated_by         :string(100)
#  user_id            :integer          default(0), not null
#  language           :string(10)       default("en"), not null
#  is_user_specific   :boolean          default(FALSE)
#  session_id         :string(100)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :parameter do
    id                 0
    parameters_list_id 0
    name               "Test parmeter"
    description        "This is a test parameter used for unit testing"
    owner_id           0
    created_by         "Fred"
    updated_by         "Fred"
    session_id         "Run01-Test"
    user_id            0
    code               "TEST"
    active_from        "2015-12-31"
    active_to          "2099-12-31"
  end

end
