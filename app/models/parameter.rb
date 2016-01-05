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
#  is_user_specific   :boolean
#

class Parameter < ActiveRecord::Base
  
### validations
  validates :code, length: { maximum: 100 }
  validates :value, length: { maximum: 100 }
  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :created_by , presence: true
  validates :updated_by, presence: true
  validates :active_from, presence: true
  validates :active_to, presence: true
  validates :language, presence: true
  belongs_to :parameters_list
    validates :parameters_list, presence: true
  belongs_to :user
    validates :user, presence:true

### private functions definitions
  private

end
