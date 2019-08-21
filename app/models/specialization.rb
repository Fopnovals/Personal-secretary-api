class Specialization < ApplicationRecord
  has_many :services
  belongs_to :profession
  before_save { self.name = name.downcase }
  validates :name, presence: true,
            uniqueness: { case_sensitive: false }
end
