# == Schema Information
#
# Table name: parameters
#
#  id                 :integer          not null, primary key
#  parameters_list_id :integer
#  name               :string(100)
#  description        :text
#  active_from        :datetime
#  active_to          :datetime
#  parent_list        :string(100)
#  value              :string(100)
#  code               :string(100)
#  owner_id           :integer          default(0), not null
#  created_by         :string(100)
#  updated_by         :string(100)
#  user_id            :integer          default(0), not null
#  language           :string(10)       default("en"), not null
#  is_user_specific   :boolean          default(FALSE)
#  session_id         :string(100)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Parameter < ActiveRecord::Base
  
### validations
  validates :code, length: { minimum: 1, maximum: 100 }
  validates :value, length: {maximum: 100 }
  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 100 }
  validates :description, presence: true, length: { maximum: 1000 }
  validates :created_by , presence: true
  validates :updated_by, presence: true
  validates :active_from, presence: true
  validates :active_to, presence: true
  validates :language, presence: true
  validates :parameters_list_id, presence:true
  validates :owner_id, presence:true
  validates :user_id, presence:true
  validates :session_id, presence:true
  belongs_to :parameters_list
#    validates :parameters_list, presence: true
  belongs_to :user                                                                       # helps retrieving the user name         
#   validates :user, presence:true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true


### private functions definitions
  private
  
  ### before filters
  def set_code 
    self.code = code.gsub(/[^0-9A-Za-z]/, '_').upcase
  end 

end
