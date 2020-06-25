class Instructor < ApplicationRecord
    has_many :students

    def avg_age
        self.students.average(:age)
    end

    def students_sorted
        self.students.sort_by(&:name)
    end

end
