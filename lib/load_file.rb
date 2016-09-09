require'csv'
require 'sunlight/congress'
require 'erb'
require 'pry'
require './lib/attendee'


Sunlight::Congress.api_key = "d3de7048581e425ca693acdb1f985dd2"

class LoadFile
  attr_reader :cleaned_data

  def initialize
    @cleaned_data = []
    @queue = Queue.new
  end

  def loader(filename="event_attendees.csv")
    contents = CSV.open filename, headers: true, header_converters: :symbol
    @cleaned_data = contents.map do |row|
      Attendee.new(row)
    end
  end

end
