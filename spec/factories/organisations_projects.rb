# == Schema Information
#
# Table name: organisations_projects
#
#  organisation_id      :integer          not null
#  project_id           :integer          not null
#  started_at           :datetime         not null
#  ended_at             :datetime
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  project_role_id      :integer          default(0), not null
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
  factory :organisations_project do
    organisation_id       0
    project_id            0
    started_at            "2015-01-01"
    status_id             0
    organisation_role_id  0
    project_role_id       0
    created_by            0
    updated_by            0
    main_relation         true
  end

end
