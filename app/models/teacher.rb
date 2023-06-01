class Teacher < ApplicationRecord
  belongs_to :person
  has_many :classrooms_teachers
end
