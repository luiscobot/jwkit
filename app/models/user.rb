class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy

  enum :responsibility, [
    :coordinator,
    :secretary,
    :service_overseer,
    :watchtower_conductor,
    :life_ministry_overseer
  ]

  normalizes :email_address, with: ->(e) { e.strip.downcase }

  validates :email_address,
    presence: true,
    uniqueness: true,
    format: { with: URI::MailTo::EMAIL_REGEXP }
end
