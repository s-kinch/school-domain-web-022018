require 'pry'

class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end


  def sort
    keys = @roster.keys.sort
    sorted_hash = {}
    keys.each do |key|
      sorted_hash[key] = @roster[key].sort
    end
    sorted_hash
  end
end
