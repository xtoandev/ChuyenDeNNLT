require_relative './ManagerDocument.rb'

class Main
  listDocuments_155 = ManagerDocument.new()

  while true do
    puts "Application Manager Document"
    puts"Enter 1: To insert document"
    puts"Enter 2: To search document by category: "
    puts"Enter 3: To show information documents"
    puts"Enter 4: To remove document by id"
    puts"Enter 5: To exit:"
    option = gets.chomp.to_i
    case option
    when 1
      listDocuments_155.addDocument()
    when 2
      puts "Enter a to search book"
      puts "Enter b to search newspaper"
      puts "Enter a to search magazine"
      puts "Enter Category Seach : "
      category = gets.chomp.to_s
      seach = ""
      case category
      when "a"
        seach = "Book"
      when "b"
        seach = "Newspaper"
      when "c"
        seach = "Magazine"
      end
      listDocuments_155.findByCategory(seach)
    when 3
      puts "List Documents : "
      listDocuments_155.showListInforDocument()
    when 4
      puts "Enter id to remove: "
      id = gets.chomp.to_i
      listDocuments_155.deleteDocument(id)
    when 5
      exit
    end

  end
end
