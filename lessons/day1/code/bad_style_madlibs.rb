# Takes in input from the user and outputs a madlib story
# Bad style example
# susan evans
# Last edited 11/25/2016

print "Welcome to my MadLib program. Please enter in some information below.\n\n"
print "name: "
var1= gets.chomp
print "adjective: "
var2= gets.chomp
print "noun: "
var3= gets.chomp
print "adjective: "
var4    = gets.chomp
print "food(plural): "
var5=gets.chomp
print "noun(plural): "
var6= gets.chomp
print "verb ending in -ed: "
var7= gets.chomp
print "noun: "
var8=gets.chomp
print "\nHERE'S YOUR MADLIB.......\n\n"
puts "Come on over to #{var1}’s Pizza Parlor where you can enjoy your favorite #{var2}-dish pizza`s.\nYou can try our famous #{var3}-lovers pizza,\nor select from our list of #{var4} toppings,\nincluding delicious #{var5}, #{var6}, and many more.\nOur crusts are hand-#{var7} and basted in #{var8} to make\nthem seem more hand-made."