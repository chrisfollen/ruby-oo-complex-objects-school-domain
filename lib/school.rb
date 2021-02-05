# code here!
class School

    attr_accessor :roster 

    def initialize name
        @name = name
        @roster = {}
    end

    def add_student student_name, grade
        if roster[grade] 
            roster[grade]<< student_name
        else
            roster[grade] = []
            roster[grade]<< student_name
        end
    end

    def grade grade_in
        roster[grade_in]
    end

    def sort
        roster.each {|grade, students| roster[grade] = students.sort}
    end



end
 