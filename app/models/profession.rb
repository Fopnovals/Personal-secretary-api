class Profession < ApplicationRecord
  has_many :specializations
  before_save { self.name = name.downcase }
  validates :name, presence: true,
            uniqueness: { case_sensitive: false }
end
