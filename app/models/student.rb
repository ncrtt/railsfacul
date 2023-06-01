class Student < ApplicationRecord
  belongs_to :person
  has_many :classrooms
end
