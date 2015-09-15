# Advanced Questions - Quiz 1 - Exercise 4

# method uuid_generator returns one UUID when called with no parameters

# define the method
def uuid_generator
  # initialize the array with all of the valid numbers and letters for hex
  hex_str = []

  # put each letter & character into the hex string array
  (0..9).each { |digit| hex_str << digit.to_s }
  ('a'..'f').each { |letter| hex_str << letter }

  # initialize the uuid string
  uuid = ""

  # set up the 5 sections
  sections = [8, 4, 4, 4, 12]

  # loop through each section
  sections.each do |section|

    # for the number of times of each section, sample from the hex_str
    section.times { uuid << hex_str.sample }

    # after the sampling is done, add a dash, unless the uuid is complete
    uuid << '-' unless uuid.length == 36
  end

  # return the uuid string
  uuid
end

# call the method to generate a uuid
my_uuid = uuid_generator

# display the uuid to the user
p my_uuid