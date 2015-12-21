# == Schema Information
#
# Table name: opportunities
#
#  organisation_id      :integer          not null
#  item_id              :integer          not null
#  member_id            :integer
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  item_role_id         :integer          default(0), not null
#  quantity             :decimal(, )      default(0.0)
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  created_by           :string(100)      not null
#  updated_by           :string(100)      not null
#  session_id           :string(100)      not null
#  main_relation        :boolean          default(FALSE)
#

FactoryGirl.define do
  factory :opportunity do
    item_id            0
    member_id          0
    organisation_id    0
    item_role_id            0
    member_role_id          0
    organisation_role_id    0
    note              "This is a test opportunity used for unit testing"
    status_id          0
    owner_id           0
    started_at         "2015-01-01"
    created_by         "Fred"
    updated_by         "Fred"
    session_id         "TestRun-01"
    
  end

end
