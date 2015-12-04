# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  planned_at  :datetime
#  closing_at  :datetime
#  started_at  :datetime
#  ended_at    :datetime
#  due_at      :datetime
#  duration    :decimal(12, 2)
#  priority_id :integer          default(0)
#  mode_id     :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_planned  :boolean          default(FALSE)
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

require 'rails_helper'

RSpec.describe Action, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
