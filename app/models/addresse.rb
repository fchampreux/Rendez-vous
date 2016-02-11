# == Schema Information
#
# Table name: addresses
#
#  id              :integer          not null, primary key
#  address_type_id :integer          not null
#  address_name    :string(100)
#  address         :text
#  zip             :string(20)
#  city            :string(50)
#  state           :string(50)
#  country_id      :integer          not null
#  entity_type     :string           not null
#  entity_id       :integer          not null
#  created_by      :string(100)      not null
#  updated_by      :string(100)      not null
#  session_id      :string(100)      not null
#  status_id       :integer          default(0)
#  active_from     :datetime         not null
#  active_to       :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Addresse < ActiveRecord::Base
end
