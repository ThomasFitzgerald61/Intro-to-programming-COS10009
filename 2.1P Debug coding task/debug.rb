# Fix up the following code that it works and produces the expected output
# in the task specification.

# Asks the user to enter their age and returns an integer age
def get_age()
    puts("Enter your age in years: ")
    age = gets.to_i
    return age
  end

  # takes a argument which is a string prompt and displays it to the user then returns the
  # entered string
  def get_string()
    puts("Enter your name:")
    name = gets.to_s.chomp()
    return name
  end

  # Calculate the year born based on the parameter age and print that out
  # along with the name of the user (pass in: name, age)
  # import date library
  def print_year_born(name, age)
    require 'date'
    year_born = Date.today.year - age
    puts(name.chomp + " you were born in: " + year_born.to_s.chomp)
  end

  def main()
    age = get_age()
    name = get_string()
    print_year_born(name, age)
  end

  main()
