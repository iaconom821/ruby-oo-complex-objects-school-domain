class School

    def initialize(school)
        @school = school
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        self.roster[grade] ||= []
        self.roster[grade].push(student)
    end

    def grade(grade)
        self.roster[grade]
    end

    def sort
        self.roster.each do |grade, students|
            students.sort! 
        end 
    end


end
