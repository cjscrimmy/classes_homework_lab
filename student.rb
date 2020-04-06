class Student
  attr_reader :name, :cohort
  attr_writer :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language(programming_language)
    return "I love #{programming_language}"
  end

end
