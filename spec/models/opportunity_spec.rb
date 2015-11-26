# == Schema Information
#
# Table name: opportunities
#
#  organisation_id      :integer          not null
#  item_id              :integer          not null
#  member_id            :integer
#  started_at           :datetime         not null
#  ended_at             :datetime
#  main_relation        :binary           not null
#  status_id            :integer          default(0), not null
#  organisation_role_id :integer          not null
#  item_role_id         :integer          default(0), not null
#  quantity             :decimal(, )      default(0.0)
#  note                 :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

require 'rails_helper'

RSpec.describe Opportunity, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
