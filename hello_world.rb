puts "Please, enter filename"
filename = gets.chomp

puts "Opening the file..."
target = open(filename, 'w')

puts "Please, enter your name: "
your_name = gets.chomp

puts "I'm going to write these to the file."

name = "<h1>Hello, my name is #{your_name} !!!</h1>"
target.write(name)

puts "And finally, we close it."
target.close

#Launchy::Browser.run("file:///home/pavlo/Documents/homework_done/writing_to_file/file.html")
system "google-chrome file:////home/ipp/LITS_Ol/file.html"