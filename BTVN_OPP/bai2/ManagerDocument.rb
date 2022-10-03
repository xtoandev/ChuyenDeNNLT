require_relative './Book.rb'
require_relative './Magazine.rb'
require_relative './Newspaper.rb'
class ManagerDocument
  @listDocument = Array.new()

  def initialize
    @listDocument = Array.new()
  end

  def add(entity)
    @listDocument.push(entity)
  end

  def addDocument
    puts "Enter a: to insert Book"
    puts "Enter b: to insert Magazine"
    puts "Enter c: to insert Newspaper"

    type = gets.chomp.to_s

    puts "Enter id: "
    id = gets.chomp.to_i
    puts "Enter publishing_name:"
    publishing_name = gets.chomp.to_s
    puts "Enter release_number: "
    release_number = gets.chomp.to_i


    case type
    when "a"
      puts "Enter authour name:"
      authour_name = gets.chomp.to_s
      puts "Enter page number: "
      page_number = gets.chomp.to_i
      book = Book.new(id,publishing_name,release_number,authour_name, page_number)
      add(book)
    when "b"
      puts "Enter issue number: "
      issueNumber = gets.chomp.to_i
      puts "Enter month issue : "
      monthIssue = gets.chomp.to_i
      magazine = Magazine.new(id, publishing_name, release_number,issueNumber , monthIssue)
      add(magazine)
    when "c"
      puts "Enter day issue: "
      dayIssue = gets.chomp.to_i
      news_pp = Newspaper.new(id, publishing_name, release_number,dayIssue)
      add(news_pp)
    end
  end

  def deleteDocument(id)
    @listDocument.delete_if {|x| x.id == id }
  end

  def findByCategory(category)
    @listDocument.each do |i|
      if i.class == category
        return i.display
      end
    end

  end

  def showListInforDocument()
    @listDocument.each do |i|
      i.display
      puts i.class
    end
  end


end