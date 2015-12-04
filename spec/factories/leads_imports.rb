# == Schema Information
#
# Table name: leads_imports
#
#  id           :integer          not null, primary key
#  title        :string(100)
#  first_name   :string(100)
#  mid_name     :string(100)
#  last_name    :string(100)
#  description  :text
#  address      :text
#  zip          :string(20)
#  city         :string(100)
#  website      :string(100)
#  email        :string(100)
#  phone        :string(100)
#  language     :string(100)
#  location     :string(100)
#  source_url   :string(100)
#  image_url    :string(100)
#  organisation :string(100)
#  org_desc     :text
#  org_address  :text
#  org_zip      :string(20)
#  org_city     :string(100)
#  org_state    :string(100)
#  org_country  :string(100)
#  org_website  :string(100)
#  org_email    :string(100)
#  org_phone    :string(100)
#  org_type     :string(100)
#  org_legal    :string(100)
#  role         :string(100)
#  from_date    :string(20)
#  job_location :string(100)
#  job_desc     :text
#  action       :string(100)
#  action_type  :string(20)
#  started_at   :string(20)
#  ended_at     :string(20)
#  note         :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  created_by   :string(100)      not null
#  updated_by   :string(100)      not null
#  session_id   :string(100)      not null
#

FactoryGirl.define do
  factory :leads_import do
    title "MyString"
name "MyString"
first_name "MyString"
language "MyString"
description "MyText"
location "MyString"
email "MyString"
phone "MyString"
URL "MyString"
note "MyText"
image_URL "MyString"
role "MyString"
company "MyString"
from_date "MyString"
job_location "MyString"
job_desc "MyText"
industry "MyString"
cy_number "MyString"
cy_street "MyString"
cy_address_info "MyString"
zip "MyString"
PObox "MyString"
cy_state "MyString"
cy_country "MyString"
  end

end
