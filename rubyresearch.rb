
#For each of the methods listed below

# Read the docs
# Try out the method in irb using a few different values
# Once you feel like you understand how it works, write down
# its arguments (name, data type, optional/required, default value if any)
# its return type
# Write an example (in code) of how to use the method
# run your code to make sure your example is valid!

# STRING
# 1 length

  # Returns: the amount of characters in a string in an integer value

  puts "hello".length

# 2 strip
  #Arguments
  # Data type:
  # Optional/required: none
  # Default value:

  # Returns: copy of string with surrounding whitespace removed
  #   whitespace: null, horizontal tab, line feed, vertical tab, form feed, carriage return, space

puts "     hello     ".strip # => "hello"
puts "\ngoodbye\r\t".strip  # => "goodbye"

# 3 split
  #Arguments
  # Data type: integer, symbol
  # Optional/required: optional
  # Default value:

  # Returns: array. Divides string into substrings based on delimeter

  puts " now's the time".split # => ["now's", "the", "time"]
  puts " now's the time".split(' ') # => ["now's", "the", "time"]
  puts " now's the time".split(/ /) # => ["", "now's", "", "the", "time"]
  puts "hello".split(//, 3) # => ["h", "e", "llo"]

# 4 start_with
#Arguments
  # Data type: string
  # Optional/required: required
  # Default value: false

  # Returns: boolean. Returns true if string starts with one of the prefixes given.

  puts "hello".start_with?("hell") # => true
  puts "hello".start_with?("heaven", "hell") # => true
  puts "hello".start_with?("heaven", "paradise") # => false
  # **Returns true if one of the prefixes matches**

# ARRAY
# first
#Arguments
# Data type: integer
# Optional/required: optional
# Default value: 0

# Returns: First element, or first n elements of array. If array is empty, first form returns nil, second form returns empty array

a = ["q", "r", "s", "t"]
puts a.first # => "q"
puts a.first(2) # => ["q", "r"]

# delete_at
#Arguments
# Data type: index
# Optional/required: required
# Default value: none

# Returns: Deletes element at the specified index, returning that element, or nil if index is out of range.

a = ["ant", "bat", "cat", "dog"]
puts a.delete_at(2) # => "cat"
puts a.delete_at(99) # => nil

# delete
#Arguments
# Data type: item or nil
# Optional/required: required
# Default value: nil

# Returns: last deleted item, or nil if no matching item is found

a = ["a", "b", "b", "b", "c"]
puts a.delete("b") # => "b"
puts a.delete("z") # => nil


# pop
#Arguments
# Data type: obj or nil
# Optional/required: optional
# Default value: -1

# Returns: new array. Removes last element from self and returns it, or nil if array is empty.

a = ["a", "b", "c", "d"]
puts a.pop # => "d"
puts a.pop(2) # => ["b", "c"]

# HASH
# to_a
#Arguments
# Data type:
# Optional/required: optional
# Default value:

# Returns: array. Converts hsh to a nested array of [key, value] arrays.

h = {"c" => 300, "a" => 100, "d" => 400, "c" => 300}
puts h.to_a # => [["c", 300], ["a, 100"], ["d", 400]]

# has_key?
#Arguments
# Data type: integer, string, symbol
# Optional/required: required
# Default value: nil

# Returns: boolean. Returns true if given key is present in hash.

h = {"a" => 100, "b" => 200}
puts h.has_key?("a") # => true
puts h.has_key?("z") # => false

# has_value?
#Arguments
# Data type: value, integer, string,
# Optional/required: required
# Default value: nil
# Returns: boolean. Returns true if given value is present for some key in hash.

h = {"a" => 100, "b" => 200}
puts h.value?(100) # => true
puts h.value?(999) # => false

# TIME
# now
#Arguments
# Data type:
# Optional/required: none
# Default value:
# Returns: new time object for current time.

puts Time.now # => 2018-11-15 17:24:52 -0500

# FILE
# exist?
#Arguments
# Data type: string
# Optional/required: required
# Default value: false
# Returns: boolean

# extname?
#Arguments
# Data type: string
# Optional/required: required
# Default value: nil
# Returns: string. Returns the extension starting from the last period. Empty string is returned when period is last character in path.

puts file.extname("test.rb") # => ".rb"
puts file.extname("a/b/d/test.rb") # => ".rb"
puts file.extname("foo.") # => ""
