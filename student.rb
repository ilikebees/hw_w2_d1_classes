# # Part A 

class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort

  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def set_name(new_name)
    return @name = new_name
  end

  def set_cohort(new_cohort)
    return @cohort = new_cohort
  end

  def talk()
    return "I can talk!"
  end

  def favourite_language(language)
    return "I love #{language}!"
  end

end
