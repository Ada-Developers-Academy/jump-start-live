# Good style example
# susan evans
# Last edited 11/25/2016
# Takes input from the user and outputs a madlib story

# welcome message
print "Welcome to my MadLib program. Please enter in some information below.\n\n"

# user inputs
print "name: "
user_name = gets.chomp

print "adjective: "
adj1 = gets.chomp

print "noun: "
noun1 = gets.chomp

print "adjective: "
adj2 = gets.chomp

print "food(plural): "
food = gets.chomp

print "noun(plural): "
noun_plural = gets.chomp

print "verb ending in -ed: "
verb = gets.chomp

print "noun: "
noun2 = gets.chomp

# output message
print "\nHERE'S YOUR MADLIB.......\n\n"
puts "Come on over to #{user_name}’s Pizza Parlor where you can enjoy your favorite #{adj1}-dish pizza`s.\nYou can try our famous #{noun1}-lovers pizza,\nor select from our list of #{adj2} toppings,\nincluding delicious #{food}, #{noun_plural}, and many more.\nOur crusts are hand-#{verb} and basted in #{noun2} to make\nthem seem more hand-made."
