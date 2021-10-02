class Language < ApplicationRecord
  belongs_to :teacher

  validates :name,:teacher_id,  presence: true

  
end
