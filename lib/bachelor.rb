def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
<<<<<<< HEAD
  data[season].each do |contestants_hash|
    if contestants_hash["status"] == "Winner"
      winner = contestants_hash["name"]
=======
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      winner = contestants["name"]
>>>>>>> 656ba1f7a948dce3dfb33cf50157e3c3cd4c1d6d
    end
  end
  winner.split.first 
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = ""
  data.each do |season_number, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["occupation"] == occupation 
        contestant_name = contestants_hash["name"]
      end
    end
  end
  contestant_name
        
end

def count_contestants_by_hometown(data, hometown)
  # code here
  array = []
  data.each do |season_number, contestants|
    contestants.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown 
        array.push(contestants_hash["name"])
      end
    end
  end
  array.length
end

def get_occupation(data, hometown)
  # code here
  occupation = ''
  data.each do |season_number, contestants_array|
    contestants_array.each do |contestants_hash|
      if contestants_hash["hometown"] == hometown 
         return contestants_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  array = []
  data.each do |season_number, contestants_array|
    if season_number == season 
      contestants_array.each do |contestants_hash|
        array.push(contestants_hash["age"].to_i)
      end
    end
  end
  average = array.inject{ |sum, el| sum + el } / array.length.to_f
  average.round(0)
end
