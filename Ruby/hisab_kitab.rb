input_file = ARGV.first

input = File.open(input_file)

individuals = {}
toPay = {}
total = 0

while(line = input.gets) 
	arr = line.split(' - ');
	individuals[arr[0]] = individuals[arr[0]].to_i() + arr[1].to_i() 
end

len = individuals.length
if len <= 0
	puts '#' * 25
	puts "INVALID INPUT FILE"
	puts '#' * 25
	Process.exit(0)
end

puts '-' * 25
puts "Individual Kharcha :"
puts '-' * 25


for name, amount in individuals
	puts "%s : Rs. %s" % [name, amount]
	total += amount
end

puts '-' * 25
puts "Total Kharcha : Rs. #{total}"
puts '-' * 25
puts "Each one to pay :"
puts '-' * 25


total = total * 1.0 / len

for name, amount in individuals
	toPay[name] = total - amount
	toPay[name] = sprintf("%.0f", toPay[name])
	puts "%s : Rs. %s" % [name, toPay[name]]
end
puts '-' * 25


input.close
