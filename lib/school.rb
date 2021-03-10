# code here!
require "pry"
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade].nil?
            @roster[grade] = []
        end
        @roster[grade] << name
       end

       def grade(grade)
        @roster[grade]
       end

       def sort
        @roster.each_with_object({}) do |(grade, students), a|
            a[grade] = students.sort
        end
       end
end