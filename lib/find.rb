require './lib/load_file'
class Find
  attr_reader :cleaned_data, :results

  # def find(attribute, criteria)
  #   results = []
  #   data = LoadFile.new
  #   data = data.loader("./event_attendees_small.csv")
  #   (results << data.find_all {|attendee| attendee.send(attribute) == criteria}).flatten!
  #   results
  # end
end
