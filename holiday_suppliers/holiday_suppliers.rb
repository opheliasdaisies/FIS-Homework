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


#Write a loop to list out all the supplies you have for each holiday and the season.