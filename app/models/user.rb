# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  title_id               :integer          default(0), not null
#  first_name             :string(100)      not null
#  last_name              :string(100)      not null
#  login                  :string(100)      not null
#  email                  :string           default(""), not null
#  categories             :string(1000)
#  tags                   :string(1000)
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  status_id              :integer          not null
#  owner_id               :integer          not null
#  session_id             :string(100)      not null
#  created_by             :string(100)      not null
#  updated_by             :string(100)      not null
#

class User < ActiveRecord::Base
      
### validations
  validates :first_name,  presence: true, length: { minimum: 5 }
  validates :last_name,   presence: true, length: { minimum: 5 }
  validates :title_id,    presence: true
  validates :login,       presence: true, length: { minimum: 5 }
  validates :email,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id,  presence: true
  validates :owner_id,   presence: true  
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		# helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"	# helps retrieving the parameter
#    validates :status, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
