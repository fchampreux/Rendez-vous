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
#  company      :string(100)
#  cy_desc      :text
#  cy_address   :text
#  cy_zip       :string(20)
#  cy_city      :string(100)
#  cy_state     :string(100)
#  cy_country   :string(100)
#  cy_website   :string(100)
#  cy_email     :string(100)
#  cy_phone     :string(100)
#  cy_type      :string(100)
#  cy_legal     :string(100)
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
#

require 'rails_helper'

RSpec.describe LeadsImport, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
