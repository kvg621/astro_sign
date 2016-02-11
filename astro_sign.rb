require 'json'
require 'date'

file=File.read('sign.json', encoding: "utf-8")

signs=JSON.parse(file)

puts " Когда родился? дд.мм"

input_date=STDIN.gets.chomp

user_birth_date=Date.parse(input_date+'.2000')

user_sign=nil

signs.each do |key, sign|
  dates=sign['dates'].split('..')

  if (Date.parse(dates[0]+'.2000')<= user_birth_date)&& (Date.parse(dates[1]+'.2000')> user_birth_date)
    user_sign=sign
  end

end

puts user_sign['text']