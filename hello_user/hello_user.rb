require 'date'
require './input_functions'

# Multiply metres by the following to get inches:
INCHES = 39.3701

def main()
	name = read_string('What is your name?')
	    puts('Your name is ' + name + '!')
	family_name = read_string('What is your family name?')
	    puts('Your family name is: ' + family_name + '!')
	year_born = read_string('What year were you born?')
	age = Date.today.year-year_born.to_i()
	    puts('So you are ' + age.to_s + ' years old')
	    puts('Enter your height in metres (i.e as a float):')
	value =  gets.to_f()
	value = value * INCHES
	    puts('Your height in inches is:')
	    puts(value.to_s())
			puts('Finished')
  continue = read_boolean('Do you want to continue?')
    if (continue)
	  	puts('Ok, lets continue')
    else
    	puts('ok, goodbye.')
	end
end
main()
