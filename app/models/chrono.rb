# == Schema Information
#
# Table name: chronos
#
#  id         :integer          not null, primary key
#  name       :string(100)      not null
#  code       :string(100)      not null
#  counter    :integer          default(0), not null
#  nb_digits  :integer          default(6), not null
#  template   :string(50)       default("code;-;counter"), not null
#  status_id  :integer          default(0), not null
#  owner_id   :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  created_by :string(100)      not null
#  updated_by :string(100)      not null
#  session_id :string(100)      not null
#

class Chrono < ActiveRecord::Base
  validates :name,       presence: true, length: { minimum: 5 }
  validates :created_by, presence: true
  validates :updated_by, presence: true
  validates :session_id, presence: true
  validates :status_id, presence: true 
  validates :owner_id, presence: true
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"		         # helps retrieving the owner name
#    validates :owner, presence: true
  belongs_to :status, :class_name => "Parameter", :foreign_key => "status_id"		 # helps retrieving the parameter
#    validates :status, presence: true

### relations


end
