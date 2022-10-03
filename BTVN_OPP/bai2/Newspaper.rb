require_relative './Document.rb'
class Newspaper < Document
  attr_accessor :dayIssue

  def initialize(id, publishing_name, release_number,dayIssue)
    super(id, publishing_name, release_number)
    @dayIssue = dayIssue
  end
  def display
    puts "Newspaper: { " + "Day Issue: " + @dayIssue.to_s
    + "| Id: "+ @id.to_s +  "| Publishing name: "+ @publishing_name + "| Release number : "+ @release_number.to_s + " }"
  end
end
