def print_details details
  puts details[:name] if details[:name]
  puts details[:age] if details[:age]


end

hh={
    :name => 'Mike',
    :age => '65',
    :address => '123 West Street'
}



print_details hh
