require 'json'

require_relative 'todo_view'
require_relative 'task'
require_relative 'list'
#
# Example:
# TodoParser.each_entry('todo.txt') do |entry|
#   puts entry.inspect
# end
 
# Simple class for reading from the TODO file. Does not support writing.
class ToDoController
  @@path = ""

  def self.read(path)
    @@path = path
    File.open(path, "r") do |file|
      JSON.parse(file.read)
    end
  end

  def self.write(data)
    File.open(@@path, "w") do |file|
      file.write(data.to_json)
    end
  end
end

data = ToDoController.read('data.json')
my_list = List.new(data['list'])

@view = ToDoView.new(ARGV, my_list)
ToDoController.write(Hash[list: my_list.to_a])

=begin
#How to use:

data = TodoParser.read('data.json')
TodoParser.write(data)

#Data returned from read, and sent to List class
{"list"=>[{"body"=>"Move with Lil to the black mountain hills of Dakota", "status"=>"open"}, {"body"=>"Lose Lil to Danny", "status"=>"open"}, {"body"=>"Get hit in the eye by Danny", "status"=>"open"}, {"body"=>"Walk into town seeking revenge", "status"=>"open"}, {"body"=>"Book room at local saloon", "status"=>"open"}, {"body"=>"Check into room, read Gideon's bible", "status"=>"open"}, {"body"=>"Drink too much gin", "status"=>"open"}, {"body"=>"Overhear Lil and Danny in neighboring room", "status"=>"open"}, {"body"=>"Burst into neighboring room, declaring showdown", "status"=>"open"}, {"body"=>"Get shot by Danny and collapse in corner", "status"=>"open"}, {"body"=>"Visit doctor", "status"=>"open"}, {"body"=>"Return to room, read Gideon's bible", "status"=>"open"}, {"body"=>"Sing along! \"D'do d'do d'do do do d'do d'do d'do\"", "status"=>"open"}]}

#Data passed into the write should also be formatted the same way
=end
