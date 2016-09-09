# require 'simplecov'
# SimpleCov.start
require "minitest/autorun"
require "minitest/pride"
require_relative '../lib/load_file.rb'
require_relative '../lib/queue.rb'
require 'pry'


class QueueTest < Minitest::Test

  def test_if_queue_can_load_results
    queue = Queue.new
    refute false, queue.find("first_name", "Sarah").empty?

  end

  def test_if_can_count_queue
    queue = Queue.new
    queue.find("first_name", "Sarah")
    assert_equal 2, queue.count
  end

  # def test_if_queue_can_be_cleared
  #   queue = Queue.new
  #   queue.find("first_name", "Sarah")
  #   assert_equal [], queue.clear_queue
  # end

end
