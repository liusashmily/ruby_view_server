require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = "Lisa"
template1 = ERB.new "The name of y is: <%= y %>"
puts template1.result(binding)