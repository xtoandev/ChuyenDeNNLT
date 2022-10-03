require_relative './Document.rb'
class Magazine < Document
  attr_accessor :issueNumber , :monthIssue

  def initialize(id, publishing_name, release_number,issueNumber , monthIssue)
    super(id, publishing_name, release_number)
    @issueNumber = issueNumber
    @monthIssue = monthIssue
  end
  def display
    puts "Magazine: { " + "IssueNumber: " + @issueNumber.to_s + "| Month Issue: " + @monthIssue.to_s
    + "| Id: "+ @id.to_s +  "| Publishing name: "+ @publishing_name + "| Release number : "+ @release_number.to_s + " }"
  end
end
