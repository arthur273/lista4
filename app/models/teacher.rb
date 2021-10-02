class Teacher < ApplicationRecord
    has_one :languages
    has_many :students


    validates :name,:email,:dataNascimento, presence: true
    validates :email, uniqueness: true
end
