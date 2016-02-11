hh={111 => 10, 
	222 => 20,
	333 => 33,
	444 => 44,
	555 => 554,
	666 => 66,
	777 => 77,
  237  => 88,
	678 => 88,
	466 => 88,
	123 => 88,
	456 => 88,
	994 => 21,
	265 => 54,
	453 => 88,
	132 => 23,
	657 => 2,
	173 => 88,
	983 => 65,
	416 => 88,
	888 => 88,
	999 => 999
}
balance=1000
loop do 
	puts "Press Enter"
	gets
	a=rand(100..999)


	hh.each_key do |roll|

		if roll==a
			balance=balance+hh[roll]
		else
			balance=balance-1
		end

	end
puts "a: #{a}"
	puts "Your balance: #{balance}"
	
end