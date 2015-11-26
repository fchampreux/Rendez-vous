# == Schema Information
#
# Table name: parameters
#
#  id                 :integer          not null, primary key
#  parameters_list_id :integer
#  name               :string
#  description        :text
#  active_from        :datetime
#  active_to          :datetime
#  parent_list        :string
#  param_value        :string
#  param_code         :string
#  owner_id           :integer
#  created_by         :string
#  updated_by         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'rails_helper'

RSpec.describe Parameter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
