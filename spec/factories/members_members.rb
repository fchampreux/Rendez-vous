# == Schema Information
#
# Table name: members_members
#
#  member_id      :integer          not null
#  member_id          :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  member_role_id :integer          not null
#  member_role_id     :integer          default(0), not null
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#  owner_id             :integer          not null
#

FactoryGirl.define do
  factory :members_member do
    member_1_id         0
    member_2_id       0
    member_1_role_id    0
    member_2_role_id  0
    status_id         0
    owner_id          0
    started_at "2015-01-01" 
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
