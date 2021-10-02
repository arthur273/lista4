class Student < ApplicationRecord
  belongs_to :teacher

  validates :name,:matricula,:email,:dataNascimento,:teacher_id, presence: true
  validates :matricula,:email, uniqueness: true
  validates_length_of :matricula, is:9
end
