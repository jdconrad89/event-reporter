

# require 'congress'
# require "net/http"

class Queue
  attr_reader :queue

  def initialize
    @queue = []
    @print_output  = []
  #   @client = Congress::Client.new()
  end

  def find(attribute, criteria)
    data = LoadFile.new
    data = data.loader("./event_attendees.csv")
    (@queue << data.find_all{|attendee| attendee.send(attribute) == criteria}).flatten!
    @queue
  end

  def printer(queue = @queue)
  @print_output << "\nLAST NAME".ljust(15) + "FIRST NAME".ljust(15) + "EMAIL".ljust(45) + "ZIPCODE".ljust(15) + "ADDRESS".ljust(40) + "CITY".ljust(30) + "STATE".ljust(10) \
  + "PHONE".ljust(15) + "DISTRICT\n"
    queue.each do |data|
      @print_output << "#{data.send(:last_name).ljust(15)}" + "#{data.send(:first_name).ljust(15)}" + "#{data.send(:email_address).ljust(45)}" \
     + "#{data.send(:zipcode).ljust(15)}" + "#{data.send(:street).ljust(40)}" + "#{data.send(:city).ljust(30)}" + "#{data.send(:state).ljust(10)}" + "#{data.send(:home_phone).ljust(15)}" \
     + "#{data.send(:district)}\n"
  end
  @print_output
 end

 def count
   @queue.count
 end

 # def queue_district(zipcode)
 #   @client.districts_locate(zipcode).to_hash["results"][0]["district"].to_s
 #
 #   url = "https://congress.api.sunlightfoundation.com/districts/locate?zip=#{:zipcode}&apikey=d3de7048581e425ca693acdb1f985dd2"
 #   resp = Net::HTTP.get_response(URI.parse(url))
 #   data = JSON.parse(resp.body)
 #  end


end
