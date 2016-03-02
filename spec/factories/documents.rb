# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  name          :string(100)      not null
#  code          :string(100)
#  chrono        :string(100)
#  description   :text
#  categories    :string(1000)
#  tags          :string(1000)
#  resource      :string(1000)
#  media_type_id :integer          default(0), not null
#  chrono_id     :integer          default(0)
#  is_template   :boolean          default(FALSE)
#  status_id     :integer          default(0), not null
#  owner_id      :integer          default(0), not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#

FactoryGirl.define do
  factory :document do
    id              0
    name            "Test Document Rails"
    description     "This is a test document used for unit testing"
    status_id       0
    owner_id        0
    media_type_id   0
    created_by      "Fred"
    updated_by      "Fred"
    session_id      "TestRun-01"
    
  end

end
