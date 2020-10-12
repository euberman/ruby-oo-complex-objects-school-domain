class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(name, grade_level)
        @roster[grade_level] ||= []
        @roster[grade_level] << name
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster.each { |k, v| v.sort! }
    end
end