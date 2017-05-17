
# Part 3
class Person
  attr_accessor :first_name, :last_name, :middle_name

  def initialize(name, last_name = nil, middle_name = nil)

    if last_name.nil?
      entire_name = name.split
      @first_name = entire_name[0]
      if entire_name.length == 2
        @last_name = entire_name[1]
      else
        @middle_name = entire_name[1]
        @last_name = entire_name[2]
      end
    elsif middle_name.nil?
      @first_name = name
      @last_name = last_name
    else
      @first_name = name
      @last_name = last_name
      @middle_name = middle_name
    end
  end
end

# has to take two arguments
# if one is specified assume the person's entire name is specified
# if two arguments assume the first_name and last_name are specified
# Part 2
class Person
  attr_accessor :first_name, :last_name

  def initialize(name, last_name = nil)
    if last_name.nil?
      entire_name = name.split
      @first_name = entire_name[0]
      if entire_name.size >= 2
        @last_name = entire_name[1]
      end
      else
        @first_name = name
        @last_name = last_name
      end
    end
end

# create a Person class using initialize with two arguments
# first_name and last_name
# Part 1
class Person
  attr_accessor :first_name, :last_name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end
