require_relative './Document.rb'

class Book < Document
  attr_accessor :authour_name, :page_number

  def initialize(id,publishing_name,release_number,authour_name, page_number)
    super(id,publishing_name,release_number)
    @authour_name = authour_name
    @page_number = page_number
  end
  def display
    puts "Book: { " + "Authour name: " + @authour_name + "| Page number: " + @page_number.to_s
    + "| Id: "+ @id.to_s +  "| Publishing name: "+ @publishing_name + "| Release number : "+ @release_number.to_s + " }"
  end

end