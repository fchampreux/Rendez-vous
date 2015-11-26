# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  title_id    :integer
#  first_name  :string(100)
#  mid_name    :string(100)
#  last_name   :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  mobile      :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :member do
    
  end

end
