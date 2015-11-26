# == Schema Information
#
# Table name: organisations
#
#  id          :integer          not null, primary key
#  name        :string(100)      not null
#  description :text
#  address     :text
#  zip         :string(20)
#  city        :string(100)
#  state       :string(100)
#  country_id  :integer
#  website     :string(100)
#  email       :string(100)
#  phone       :string(100)
#  categories  :text
#  status_id   :integer          default(0), not null
#  legal_id    :integer          default(0), not null
#  owner_id    :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Organisation < ActiveRecord::Base

  validates :name, presence: true, length: { minimum: 5  }
  validates :owner_id, presence: true
  validates :status_id, presence: true
  validates :legal_id, presence: true
  
end
