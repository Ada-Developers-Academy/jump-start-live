=begin
  Meetings are a necessary evil, like trans-fats and Harry Potter fan fiction.

  With distributed workers becoming much more common, managing time zones has added
  a new layer of complexity to scheduling meetings.

  Phase 1:
  Write a program the prompts the user for the time a meeting begins here in Seattle.
  Adjust the meeting start time for your coworkers in _Chicago (Central Time)_ and _Pittsburgh (Eastern Time)_.
  Output the meeting start time for each time zone so everyone knows when to show up.

  Example:
  If the user provides 11am, Seattle Time, output something like:
  Seattle: 11am
  Chicago: 1pm
  Pittsburgh: 2pm

  Notes:
  Collect meridian and hour separately, i.e., `gets.chomp` for both `11` and `am`.
  Output 12hr times, as opposed to 24hr time.

  Phase 2:
  Update the program so it collects the meeting start time _and_ the user's location.
  Output the meeting start times for each time zone based on the user's indicated location.

  Example:
  If the user provides 2pm, Chicago, output something like:
  Seattle: 12pm
  Chicago: 2pm
  Pittsburgh: 3pm

  Phase 3:
  Oh noes! We've opened a new office in Frankfurt, Germany, and the Germans are fond of
  24hr clocks. Add Frankfurt to meeting time output, with the time adjusted for their time
  zone (GMT+1) and represented in 24 hour time.

  Example: If the user provides 11am, Pittsburgh, output something like:
  Seattle: 8am
  Chicago: 10am
  Pittsburgh: 11am
  Frankfurt: 1700

  Seattle : Frankfurt : 24hr
  9am : 6pm : 1800
  9pm : 6am : 600
  11pm : 8am : 800
  4am : 1pm : 1300
  6pm : 3am : 300

  Phase 4:
  Output all times in both 12 and 24hr time formats.

  Example: If the user provides 9am, Seattle, output something like:
  Seattle: 9am 900
  Chicago: 11am 1100
  Pittsburgh: 12pm 1200
  Frankfurt: 6pm 1800
=end

# Phase 2
# collect city, start time and meridian
print "City: 1) Seattle, 2) Chicago, 3) Pittsburgh (1, 2, 3)"
city = gets.chomp.to_i
print "Is the meeting in the morning or the afternoon? (am/pm)"
meridian = gets.chomp
print "What time does the meeting begin? (numeric, 1-12)"
time = gets.chomp.to_i

city_keys = [:sea, :chi, :pit]
gmt_adjustments = {
  pgh: -5,
  chi: -6,
  sea: -8
}

# convert collected time to gmt time
gmt_time = time + gmt_adjustments[city_keys[city]]


#Phase 1
# meridian = ""
# time = ""

# print "Is the meeting in the morning or the afternoon? (am/pm)"
# meridian = gets.chomp
# while meridian != "am" && meridian != "pm" do
#   puts meridian
#   print "Is the meeting in the morning or the afternoon? (am/pm)"
#   meridian = gets.chomp
# end

# print "Ok, the meeting starts in the #{meridian}. What hour is it starting? "
# time = gets.chomp.to_i
# while time < 1 || time > 24 do
#   print "Ok, the meeting starts in the #{meridian}. What hour is it starting? "
#   time = gets.chomp.to_i
# end

# # do chicago time
# if time == 10
#   chi_time = 12
#   if meridian == "am"
#     chi_meridian = "pm"
#   else
#     chi_meridian = "am"
#   end
# elsif time >= 11
#   chi_time = time - 10
#   if meridian == "am"
#     chi_meridian = "pm"
#   else
#     chi_meridian = "am"
#   end
# else
#   chi_time = time + 2
#   chi_meridian = meridian
# end

# # do pgh time
# if time == 9
#   pgh_time = 12
#   if meridian == "am"
#     pgh_meridian = "pm"
#   else
#     pgh_meridian = "am"
#   end
# elsif time >= 10
#   pgh_time = time - 9
#   if meridian == "am"
#     pgh_meridian = "pm"
#   else
#     pgh_meridian = "am"
#   end
# else
#   pgh_time = time + 3
#   pgh_meridian = meridian
# end


# puts "Ok, here are all the meeting times:"
# puts "Seattle: #{ time }#{meridian}"
# puts "Chicago: #{ chi_time }#{ chi_meridian }"
# puts "Pittsburgh: #{ pgh_time }#{ pgh_meridian }"
