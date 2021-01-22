# code here!
class School
    attr_accessor :roster
    attr_reader :name
    def initialize(name)
        @name=name
        @roster = {}
    end
    def add_student(name, grade)
        if @roster.keys.include?(grade)
            @roster[grade].push(name)
        else
            @roster[grade] = []
            @roster[grade].push(name)
        end
    end
    def grade(num)
        @roster[num]
    end
    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end