# Asks the suer what time of day it is, and then greets
# them appropriately, responding graciously if you have
# no idea what they just said.

puts "What time of day is it?"

time_of_day = gets.chomp

if time_of_day == "morning"
  puts "Good morning!"
elsif time_of_day == "afternoon"
  puts "afternoon"
elsif time_of_day == "evening"
  puts "evening"
else
  puts "I see, thank you."
end


