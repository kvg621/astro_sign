# encoding: utf-8

p "Ваш ход (s n p)"
x_h= gets.chomp
y={
    1 => 's',
    2 => 'n',
    3 => 'p'
}
x_c=y[rand(1..3)]

def who_win a1, a2
  sum= "#{a1}#{a2}"

  hhh={
      "ss" => 'ничья',
      "nn" => 'ничья',
      "pp" => 'ничья',
      "ps" => 'comp',
      "sn" => 'comp',
      "np" => 'comp',
      "sp" => 'human',
      "ns" => 'human',
      "pn" => 'human'
  }
  puts "sum: #{sum}"
  puts "hhh: #{hhh[sum]}"
  return hhh[sum]
end
sss=who_win x_h, x_c
puts "sss: #{sss}"
puts "comp: #{x_c} результат: #{sss} "