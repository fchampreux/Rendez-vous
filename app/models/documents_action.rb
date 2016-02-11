# == Schema Information
#
# Table name: documents_actions
#
#  document_id      :integer          not null
#  action_id        :integer          not null
#  started_at       :datetime         not null
#  ended_at         :datetime
#  main_relation    :boolean          default(FALSE)
#  status_id        :integer          default(0), not null
#  document_role_id :integer          default(0), not null
#  action_role_id   :integer          default(0), not null
#  note             :text
#  created_by       :string(100)      not null
#  updated_by       :string(100)      not null
#  session_id       :string(100)      not null
#  owner_id         :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#


class DocumentsAction < ActiveRecord::Base
end
