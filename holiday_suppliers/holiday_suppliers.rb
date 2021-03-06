holiday_supplies = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :forth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

#How would you access the second supply for the forth_of_july?
holiday_supplies[:summer][:forth_of_july][1]

#Add a supply to a Winter holiday.
holiday_supplies[:winter][:new_years] << "Confetti"

#Add a supply to memorial day.
holiday_supplies[:spring][:memorial_day] << "Flags"

#Add a new holiday to any season with supplies.
holiday_supplies[:fall][:halloween] = ["Candy", "Pumpkins", "Costumes"]

#Write a method to collect all Winter supplies from all the winter holidays. ex: winter_suppliers(holiday_supplies) #=> ["Lights", "Wreath", etc]
def winter_suppliers(holiday_supplies)
  winter_supplies = []
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies.each do |supply|
      winter_supplies << supply
    end
  end
  winter_supplies
end
winter_suppliers(holiday_supplies)

#Write a loop to list out all the supplies you have for each holiday and the season.

# Output:

# Winter:
#   Christmas: Lights and Wreath
#   New Years: Party Hats
holiday_supplies.each do |season, hash|
  puts "#{season.to_s.capitalize}:"
  hash.each do |holiday, supplies|
    holiday_array = holiday.to_s.split("_")
    holiday_array.each do |word|
      word.capitalize!
    end
    holiday = holiday_array.join(" ")
    puts "   #{holiday}: #{supplies.join(", ")}"
  end
end

#Write a method to collect all holidays with BBQ.
def holidays_with_bbqs(holiday_supplies)
  bbq_holidays = []
  holiday_supplies.each do |season, hash|
    hash.each do |holiday, array|
      if array.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end
holidays_with_bbqs(holiday_supplies)