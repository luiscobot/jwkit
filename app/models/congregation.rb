class Congregation < ApplicationRecord
  validates :name, presence: true

  def self.instance
    find_or_initialize_by(id: 1)
  end
end
