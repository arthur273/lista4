class Language < ApplicationRecord
  belongs_to :teacher

  validates :name,:teacher_id,  presence: true
  validates :name, uniqueness: true

  has_many_attached :documentation
end
