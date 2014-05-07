# HW0 PART 2  (100 points possible)

# Check the documentation on String and Regexp 
# as they could help tremendously with these exercises. :-)

# Define a method hello(name) that takes a string representing a name 
# and returns the string "Hello, " concatenated with the name.

def hello(name)
    if name.length == 0
        puts 'You might have forgotten to enter you name?!'
    else
        "Hello, " << name
    end
end

=begin
puts "Hello from PK HW0 Part 2a hello(name)"
puts hello('Prasanth Kumar Rasam')
puts hello('')
puts hello('0')
=end

# Define a method starts_with_consonant?(s) that takes a string 
# and returns true if it starts with a consonant and false otherwise. 
# (For our purposes, a consonant is any letter other than A, E, I, O, U.) 
# NOTE: be sure it works for both upper and lower case and for nonletters!

def starts_with_consonant?(a_string)
  consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  the_first_char = a_string.chr.downcase
  consonants.include? the_first_char
end

=begin
puts "Hello from PK HW0 Part 2b starts_with_consonont?(s)"
puts starts_with_consonant?('BCD').to_s        + "  'BCD'       should == true"
puts starts_with_consonant?('xyz').to_s        + "  'xyz'       should == true"
puts starts_with_consonant?('AEIOU').to_s      + " 'AEIOU'      should == false"
puts starts_with_consonant?('aeiou').to_s      + " 'aeiou'      should == false"
puts starts_with_consonant?('eaiou').to_s      + " 'eaiou'      should == false"
puts starts_with_consonant?('12345').to_s      + " '12345'      should == false"
puts starts_with_consonant?('&*%^&$abc1').to_s + " '&*%^&$abc1' should == false"
puts starts_with_consonant?("Unix").to_s       + " 'Unix'       should == true"
=end


# Define a method binary_multiple_of_4?(s) that takes a string 
# and returns true if the string represents a binary number 
# that is a multiple of 4. NOTE: be sure it returns false if the string 
# is not a valid binary number!

  def binary_multiple_of_4? a_binary_as_string
    return false if a_binary_as_string.empty?

    a_binary_as_string.each_char do |lcl_var|
      return false unless lcl_var == '1' || lcl_var == '0'
    end

    (a_binary_as_string.to_i(2) % 4).zero?
  end

=begin
puts "Hello from PK HW0 Part 2c binary_multiple_of_4?(s)"
puts binary_multiple_of_4?("0100").to_s + "  '0100' should == true"
puts binary_multiple_of_4?("1000").to_s + "  '1000' should == true"
puts binary_multiple_of_4?("20").to_s   + " '20'   should == false"
puts binary_multiple_of_4?("X100").to_s + " 'X100' should == false"
puts binary_multiple_of_4?("100X").to_s + " '100X' should == false"
puts binary_multiple_of_4?("0101").to_s + " '0101' should == false"
puts binary_multiple_of_4?("").to_s     + " ''     should == false"
puts binary_multiple_of_4?("0").to_s    + "  '0'    should == true"
puts binary_multiple_of_4?("0000").to_s + "  'Unix' should == false"
=end

# http://edx-cs169-1x.stackexchange.com/questions/593/autograder-unknown-error-hw0part2-incorrect-results-for-input-unix
