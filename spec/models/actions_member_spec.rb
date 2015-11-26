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

require 'rails_helper'

RSpec.describe ActionsMember, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
