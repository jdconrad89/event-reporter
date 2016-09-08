require './lib/find'

class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def find(attribute, criteria)
    results = []
    data = LoadFile.new
    data = data.loader("./event_attendees_small.csv")
    (@queue << data.find_all {|attendee| attendee.send(attribute) == criteria}).flatten!
  end

  def count
    @queue.count
  end

  def clear_queue
    @queue = []
  end

  def print
    puts "last name first name"
  end
  "LAST NAME".ljust(20) + "FIRST NAME".ljust(20)
end
