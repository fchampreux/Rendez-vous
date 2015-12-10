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
#

class ItemsProject < ActiveRecord::Base
end