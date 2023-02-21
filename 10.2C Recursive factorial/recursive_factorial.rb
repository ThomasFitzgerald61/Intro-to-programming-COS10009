# Recursive Factorial

# Complete the following
def factorial(n)
    return 1 if n <= 1
    n * factorial(n - 1)
end

# Add to the following code to prevent errors for ARGV[0] < 1 and ARGV.length < 1
def main
  puts factorial(ARGV[0].to_i)
  puts("Incorrect argument - need a single argument with a value of 1 or more") if ARGV[0].to_i < 1
end

main
