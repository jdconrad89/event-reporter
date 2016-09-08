puts "This is Event Reporter!"
input = ""
until input == "quit"
  puts "Please enter a command:"
  input = gets.chomp
  if input = "load"
    LoadFile.new
  elsif input "queue count"
    Queue.count
  else
    puts "that command doesnt exist"
  end

  case input
  when "load"
    Loadfile.new
  when "queue count"
    Queue.count
  default
    puts "that command doesnt exist"
  end
end
