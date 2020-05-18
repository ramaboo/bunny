# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  confirmation_sent_at   :datetime
#  confirmation_token     :string
#  confirmed_at           :datetime
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  date_of_birth          :date
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  facebook_url           :string
#  failed_attempts        :integer          default("0"), not null
#  first_name             :string
#  last_name              :string
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  locked_at              :datetime
#  phone                  :string
#  playa_name             :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  roles                  :string           default("{}"), is an Array
#  sign_in_count          :integer          default("0"), not null
#  status                 :string
#  unconfirmed_email      :string
#  unlock_token           :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_confirmation_token    (confirmation_token) UNIQUE
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_unlock_token          (unlock_token) UNIQUE
#
class User < ApplicationRecord
  extend Enumerize

  devise :database_authenticatable, :lockable, :recoverable, :registerable, :rememberable, :timeoutable, :trackable, :validatable

  # has_one_attached :image
  
  enumerize :status, in: [:active, :blocked], default: :active
  validates :facebook_url, url: { allow_blank: true }

  def name
    "#{first_name} #{last_name}".squish.presence
  end

  def to_s
    email
  end
end
