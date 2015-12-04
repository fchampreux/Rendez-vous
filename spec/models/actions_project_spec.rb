# == Schema Information
#
# Table name: actions_projects
#
#  project_id      :integer          not null
#  action_id       :integer          not null
#  started_at      :datetime         not null
#  ended_at        :datetime
#  status_id       :integer          default(0), not null
#  project_role_id :integer          not null
#  action_role_id  :integer          default(0), not null
#  note            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  main_relation   :boolean          default(FALSE)
#

require 'rails_helper'

RSpec.describe ActionsProject, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
