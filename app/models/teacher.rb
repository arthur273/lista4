class Teacher < ApplicationRecord


    has_one :languages
    has_many :students


    validates :name,:email,:dataNascimento, presence: true
    validates :email, uniqueness: true

    has_one_attached :pfp
end
