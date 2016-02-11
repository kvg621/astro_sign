hh={}

def set_age h,name, age
h[ name ] = age
  # добавляем в хэш
end

def show_hash h
puts h
end

loop do

  puts "name?"
  name=gets.chomp
  break if name==""
  puts "age?"
  age=gets.chomp
  break if age==""
  set_age hh,name,age
  # добавлять пока не введена пустая строка
end
show_hash hh