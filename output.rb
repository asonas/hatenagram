require "ERB"

#[http://instagr.am/p/V9CDZ_NBYn/:image=http://distilleryimage3.s3.amazonaws.com/24a4e2387b5d11e285b022000a9f15de_7.jpg]
urls      = ARGV[0].delete("[]").split(":image=")

puts urls

template = ERB.new(File.read("template.erb"))
puts template.result(binding)
