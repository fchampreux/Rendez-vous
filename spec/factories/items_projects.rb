# == Schema Information
#
# Table name: items_projects
#
#  project_id      :integer          not null
#  item_id         :integer          not null
#  started_at      :datetime         not null
#  ended_at        :datetime
#  status_id       :integer          default(0), not null
#  project_role_id :integer          not null
#  item_role_id    :integer          default(0), not null
#  note            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  main_relation   :boolean          default(FALSE)
#  owner_id        :integer          not null
#

FactoryGirl.define do
  factory :items_project do
    project_id         0
    item_id       0
    project_role_id    0
    item_role_id  0
    status_id         0
    owner_id          0
    started_at "2015-01-01" 
    created_by "Fred"
    updated_by "Fred"
    session_id "TestRun-01"
    
  end

end
