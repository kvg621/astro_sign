
class Person

  def initialize
    @hh={}
  end

  def add_person name, age
    @hh[name] = age
    # добавляем в хэш
  end

  def show_hash
  puts @hh
  end
end

pers=Person.new

  loop do
    puts "name?"
    name=gets.chomp
    #puts "allredy exist" if hh[name]
    break if name==""
    puts "age?"
    age=gets.chomp
    break if age==""
    pers.add_person name,age
    # добавлять пока не введена пустая строка
   end


pers.show_hash

