if ARGV.empty?
  puts 'without argument'
else 
ARGV.each do| el |
  puts "Argument: #{el}"
end
end
