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
#

FactoryGirl.define do
  factory :user do
    id                    0
    email                 "fchampreux@gmail.com"
    password              "abcd1234"
    password_confirmation "abcd1234"
  end

end
