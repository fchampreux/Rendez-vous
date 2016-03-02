# == Schema Information
#
# Table name: chronos
#
#  id         :integer          not null, primary key
#  name       :string(100)      not null
#  code       :string(100)      not null
#  counter    :integer          default(0), not null
#  nb_digits  :integer          default(6), not null
#  template   :string(50)       default("code;-;counter"), not null
#  status_id  :integer          default(0), not null
#  owner_id   :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  created_by :string(100)      not null
#  updated_by :string(100)      not null
#  session_id :string(100)      not null
#

FactoryGirl.define do
  factory :chrono do
    id          0
    name        "Test Chrono Rails"
    status_id   0
    owner_id    0
    created_by  "Fred"
    updated_by  "Fred"
    session_id  "TestRun-01"
    
  end

end
