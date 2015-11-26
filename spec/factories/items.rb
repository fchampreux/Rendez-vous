# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  code        :string(100)      not null
#  name        :string(100)      not null
#  description :text
#  resource    :text
#  media_id    :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :item do
    
  end

end
