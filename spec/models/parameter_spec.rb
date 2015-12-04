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
#  value              :string
#  code               :string
#  owner_id           :integer
#  created_by         :string
#  updated_by         :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer          default(0), not null
#  language           :string(10)       default("en"), not null
#

require 'rails_helper'

RSpec.describe Parameter, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
