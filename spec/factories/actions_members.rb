# == Schema Information
#
# Table name: actions_members
#
#  member_id      :integer          not null
#  action_id      :integer          not null
#  started_at     :datetime         not null
#  ended_at       :datetime
#  main_relation  :binary           not null
#  status_id      :integer          default(0), not null
#  member_role_id :integer          not null
#  action_role_id :integer          default(0), not null
#  note           :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

FactoryGirl.define do
  factory :actions_member do
    
  end

end
