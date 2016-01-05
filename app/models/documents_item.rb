# == Schema Information
#
# Table name: documents_items
#
#  document_id      :integer          not null
#  item_id          :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  status_id        :integer          default(0), not null
#  document_role_id :integer          not null
#  item_role_id     :integer          default(0), not null
#  note             :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  main_relation    :boolean          default(FALSE)
#  owner_id         :integer          not null
#

class DocumentsItem < ActiveRecord::Base
end
