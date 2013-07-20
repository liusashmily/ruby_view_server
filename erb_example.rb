require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = "Lisa"
template1 = ERB.new "The name of y is: <%= y %>"
puts template1.result(binding)

z =['Amy','Johnathan','Jess']
template2 = ERB.new "The people in whitehall are: "
puts template2.result(binding)
z.each do |name|
	puts name
end

stones = { 1 => "garnet", 2 => "topaz", 
           3 => "opal", 4 => "amethyst"
         }

puts stones.fetch 1
puts stones[2]
puts stones.values_at 1, 2, 3