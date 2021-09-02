a = [1,2,3,4,5,6,7,8,9]
for c in 0..8 do 
	next if c %2==1  
	puts a[c]
	puts "#{puts 'a' if c%2==0}"
end
