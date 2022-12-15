# here is the code we saw on the previous slide:
# def main
# 	puts "Hello World"
# end

# main

# Fix the code below to get rid of the error message:
c = "This is a string"
print("Enter first number to add: " )
 # convert the text to an integer - more on this in the next slide
a = gets().to_i()
print("Enter second number to add: " )
b = gets().to_i()
print("The sum of the numbers is: ")
sum = a + b
print(sum.to_s())



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
  def prints_year_born(age, name)
    require 'date'
    gets_year_born = Date.today.year - age
    puts( name + " you were born in: " + prints_year_born.to_s)
  end

  def main()
    age = get_age()
    name = get_string()
    prints_year_born(age, name)
  end

  main()
