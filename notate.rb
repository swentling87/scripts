#!/usr/bin/env ruby

#call nt8 then put in the ticket number when prompted
#add this to your bash profile: alias nt8="ruby /Users/stephenwentling/Desktop/Dev/scripts/notate.rb"

require "fileutils"
puts "Enter a Ticket #: "
input = gets.chomp
if input.length > 4
  puts "Invalid input, must be 4 digits."
  exit
end
path = FileUtils.pwd
`mkdir "#{input}"`
`touch "#{input}/notes.rb"`
`open "#{path}/#{input}/notes.rb"`
