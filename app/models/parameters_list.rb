# == Schema Information
#
# Table name: parameters_lists
#
#  id               :integer          not null, primary key
#  code             :string(100)
#  name             :string(100)
#  description      :text
#  owner_id         :integer          default(0), not null
#  created_by       :string(100)
#  updated_by       :string(100)
#  user_id          :integer          default(0), not null
#  language         :string(10)       default("en"), not null
#  is_user_specific :boolean          default(FALSE)
#  session_id       :string(100)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class ParametersList < ActiveRecord::Base
  
### validations
  validates :name, presence: true, uniqueness: true, length: { minimum: 5, maximum: 100 }
  validates :description, length: { maximum: 1000 }
  validates :created_by , presence: true
  validates :updated_by, presence: true
  validates :language, presence: true
  validates :owner_id, presence: true
  validates :user_id, presence: true
  validates :session_id, presence: true
  belongs_to :user
#    validates :user, presence:true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#1    validates :owner, presence: true
  has_many :parameters, :dependent => :destroy 

### private functions definitions
  private

  ### before filters
    def set_code 
      self.code = name.gsub(/[^0-9A-Za-z]/, '_').upcase
    end 

end
