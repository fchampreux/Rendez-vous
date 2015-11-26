# == Schema Information
#
# Table name: documents
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  resource    :text
#  media_id    :integer          default(0), not null
#  status_id   :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Document, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
