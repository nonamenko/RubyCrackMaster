# RubyCrackMaster.rb

# Function to obfuscate characters
def obfuscate(char)
  (char.ord ^ 0x5A).chr
end

# Function to get the obfuscated correct password
def get_obfuscated_password
  password = "SecurePass123"
  password.chars.map { |c| obfuscate(c) }.join
end

# Function to check the password
def check_password(input)
  obfuscated_password = get_obfuscated_password
  obfuscated_input = input.chars.map { |c| obfuscate(c) }.join
  obfuscated_input == obfuscated_password
end

puts "Welcome to RubyCrackMaster!"
print "Please enter the activation password: "
input = gets.chomp

# Small delay to complicate analysis
sleep(0.5)

if check_password(input)
  puts "Congratulations! You have cracked RubyCrackMaster."
else
  puts "Incorrect password. Please try again."
end
