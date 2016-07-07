=begin
  Did you know that $10 hourly wage is approximately the same as a $20k annual wage?
  It's been my metric for salary considerations for a long time. Maybe it's because
  I grew up poor, but thinking in hourly wage has always been more clear to me than
  thinking in annual salaries.

  So let's make a tool to explore this. Write a program that prompts a user for an hourly
  salary and then calculates what the equivalent annual salary would be. Doing this
  relies on assumptions, so let's state them:

  - 40hr work weeks
  - 50 work weeks per year (assuming 2 weeks unpaid leave)
  - 15% tax bracket

  Format your output to look like dollars. I like using `sprintf` to do this.

  Enhancement 1
  -------------
  It's rarely framed as such, but the concept of salary employment was created
  as a detriment to workers. It was created to deny them overtime, as, typically,
  reliable overtime was more expensive to companies than providing other benefits.

  Hourly workers were asked to give up their right to overtime in return for things
  like health insurance and paid vacation.

  In the US, non-exempt workers (essentially folks not on salary) are entitled to
  overtime pay when they work more than 40 hours per week. The federal minimum for
  overtime pay is 1.5 the hourly rate. Let's compare how overtime affects annual
  compensation.

  Alter your program to show the difference in pay when the user works 45 and 50
  hours per week. Continue showing the equivalent annual compensation.

  Enhancement 2
  -------------
  Another complication in comparing salary and hourly work is how the tax brackets
  change as commpensation increases. When I lived in Pittsburgh, I paid federal, state,
  and city income tax. Moving to Seattle, which has neither state nor city income tax
  was the equivalent of receiving a 10% raise.

  Assume we're dealing with just federal income tax for a single person with no
  dependents. Update your code to use the correct tax percentage based on the
  person's annual income.

  Example: $35/hr with no overtime is $70k annually before taxes. That puts the person
  in the 25% tax bracket, so their take-home for the year is 70_000 * 0.75, or $52,500.

  (this is a hyper-simplification of how federal income tax works, I know)

  Rate      Income Range
  ----      --------------------
  10%       $0 to $9,275
  15%       $9,275 to $37,650
  25%       $37,650 to $91,150
  28%       $91,150 to $190,150
  33%       $190,150 to $413,350
  35%       $413,350 to $415,050
  39.6%     $415,050+


  Output the salary pre and post tax, plus the tax rate for each salary.
=end

print "What's your hourly wage? "
hourly = gets.chomp.to_f

raw_salary = hourly * 40 * 50
rate = 0.9 # default rate
rate = 0.85 if raw_salary >= 9275
rate = 0.75 if raw_salary >= 37650
rate = 0.72 if raw_salary >= 91150
rate = 0.66 if raw_salary >= 190150
rate = 0.65 if raw_salary >= 413350
rate = .604 if raw_salary >= 415050

raw_45 = ((hourly * 40) + (hourly * 1.5 * 5)) * 50
rate_45 = 0.9 # default rate
rate_45 = 0.85 if raw_45 >= 9275
rate_45 = 0.75 if raw_45 >= 37650
rate_45 = 0.72 if raw_45 >= 91150
rate_45 = 0.66 if raw_45 >= 190150
rate_45 = 0.65 if raw_45 >= 413350
rate_45 = .604 if raw_45 >= 415050

raw_50 = ((hourly * 40) + (hourly * 1.5 * 10)) * 50
rate_50 = 0.9 # default rate
rate_50 = 0.85 if raw_50 >= 9275
rate_50 = 0.75 if raw_50 >= 37650
rate_50 = 0.72 if raw_50 >= 91150
rate_50 = 0.66 if raw_50 >= 190150
rate_50 = 0.65 if raw_50 >= 413350
rate_50 = .604 if raw_50 >= 415050

salary     = raw_salary * rate
forty_five = raw_45 * rate_45
fifty      = raw_50 * rate_50

puts "That's an annual salary of $#{ sprintf '%.2f', salary } per year!"
puts "At 45 hours per week hourly, that's $#{ sprintf '%.2f', forty_five } per year!"
puts "At 50 hours per week hourly, that's $#{ sprintf '%.2f', fifty } per year!"
