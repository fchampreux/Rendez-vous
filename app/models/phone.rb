# == Schema Information
#
# Table name: phones
#
#  id            :integer          not null, primary key
#  phone_type_id :integer          not null
#  phone_name    :string(100)
#  phone         :text
#  country_id    :integer          not null
#  entity_type   :string           not null
#  entity_id     :integer          not null
#  created_by    :string(100)      not null
#  updated_by    :string(100)      not null
#  session_id    :string(100)      not null
#  status_id     :integer          default(0)
#  active_from   :datetime         not null
#  active_to     :datetime
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Phone < ActiveRecord::Base
end
