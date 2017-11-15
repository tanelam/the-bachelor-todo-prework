require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  season_winner = ""
  data[season].each do |contestant_information|
   if contestant_information["status"].include?("Winner")
    season_winner << contestant_information["name"].split(" ").first
    end
  end
  season_winner
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestant_information|
   contestant_information.each do |contestant|
    if contestant["occupation"].include?(occupation)
      return contestant["name"]
    end
   end
 end
end

def count_contestants_by_hometown(data, hometown)
  # code here
    counter = 0
  data.each do |season, contestant_information|
   contestant_information.each do |contestant|
     if contestant["hometown"].include?(hometown)
       counter += 1
    end
   end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant_information|
   contestant_information.each do |contestant|
     if contestant["hometown"].include?(hometown)
        return contestant["occupation"]
      end
     end
   end
end

def get_average_age_for_season(data, season)
  # code here
  contestants_number = 0
  ages_total = 0
  data[season].each do |contestant_information|
    ages_total += (contestant_information["age"]).to_i
    contestants_number += 1
 # binding.pry
 end
 (ages_total / contestants_number.to_f).round(0)
end
