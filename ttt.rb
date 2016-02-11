# encoding: utf-8
# require 'matrix'
dh={
    '1' => {'1' => '11', '2' => '12', '3' => '13'},
    '2' => {'1' => '21', '2' => '22', '3' => '23'},
    '3' => {'1' => '31', '2' => '32', '3' => '33'}
}
line='________________'

def table_print(dh, line)     # таблица с графикой
  puts line
  dh.each do |r, value|
    print '|'
    value.each do |t, val|
      print " #{val} |"
    end
    puts ''
    puts line
  end
end

def print_without(dh)
  values=dh.values # таблица без графики
  values.each do |k, v|
    k.each do |k, v|
      print " #{v}"
    end
    puts ''
  end
end

print_without(dh)

puts ''
table_print(dh, line)
loop do
puts "Ваш ход по X"
у = gets.chomp

puts "Ваш ход по Y"
x = gets.chomp
row=dh[x]
row[у] = 'X'
print_without(dh)
table_print(dh, line)
end