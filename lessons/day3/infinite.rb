favorite_animal = nil
print "What's your first name?"
name = gets.chomp.capitalize
if name.start_with?("A")
  print "What is your favorite animal?"
  favorite_animal = gets.chomp
end
puts "Your favorite animal is #{favorite_animal}"


# names = ["Kasey", "Steph", "Mina", "Laneia", "Cloudy"]
# favorite_animal = ""
# names.each do |name|
#   print "What is the favorite animal of #{name}?\t"
#   favorite_animal = gets.chomp
#   puts "\t#{favorite_animal} is mine too!"
# end
# puts "Favorite Animal is #{favorite_animal}"




# # list = ["Goofy", "Minnie", "Daisy"]
# # greeting = nil

# # list.each do |name|
# # 	name << "' birthday! "
# # 	greeting = name
# # end

# # puts greeting

# # # list = ["Goofy", "Minnie", "Daisy"]
# # # name = "Donald"

# # # list.each do |name|
# # #   name << " birthday! "
# # # end

# # # puts name


# # # # numbers = [1, 2, 3, 4, 5]
# # # # numbers.each do |number|
# # # #   puts number
# # # #   numbers.push(number * 2)
# # # # end


# # # # # print "Do you like dogs or cats?"
# # # # # pet = gets.chomp.downcase
# # # # # until pet == "dogs"
# # # # #   puts "How rude!  I don't believe you, how can anyone not prefer dogs!"
# # # # #   print "Come now, tell me truthfully, do you like cats or dogs?"
# # # # #   pet = gets.chomp.downcase
# # # # # end
# # # # # puts "Oh you like dogs now too!  We'll be such good friends!"