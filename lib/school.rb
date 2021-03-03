# code here!
class School
    def initialize(school)
        @school = school
        @roster = {}
    end
    
    def roster
        @roster
    end

    def add_student(name, grade)
        @roster[grade] ||= []
        @roster[grade] << "#{name}"
    end

    def grade(school_grade)
        @roster[school_grade]
    end

    def sort
        @roster.each do |grade, name|
            name.sort!
        end
    end
end