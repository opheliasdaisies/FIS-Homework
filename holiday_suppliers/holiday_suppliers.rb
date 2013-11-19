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