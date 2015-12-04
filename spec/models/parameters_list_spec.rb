# == Schema Information
#
# Table name: parameters_lists
#
#  id          :integer          not null, primary key
#  code        :string
#  name        :string
#  description :text
#  owner_id    :integer
#  created_by  :string
#  updated_by  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer          default(0), not null
#  language    :string(10)       default("en"), not null
#

require 'rails_helper'

RSpec.describe ParametersList, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
