# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  categories  :string(1000)
#  tags        :string(1000)
#  planned_at  :datetime
#  closing_at  :datetime
#  started_at  :datetime
#  ended_at    :datetime
#  due_at      :datetime
#  duration    :decimal(12, 2)
#  priority_id :integer          default(0)
#  mode_id     :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  is_planned  :boolean          default(FALSE)
#  created_by  :string(100)      not null
#  updated_by  :string(100)      not null
#  session_id  :string(100)      not null
#

FactoryGirl.define do
  factory :action do
    id          0
    name        "Test Action Rails"
    description "This is a test action used for unit testing"
    status_id   0
    owner_id    0
    priority_id 0
    mode_id     0
    created_by  "Fred"
    updated_by  "Fred"
    session_id  "TestRun-01"
    
  end

end
