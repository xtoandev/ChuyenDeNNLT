class Document
  attr_accessor :id, :publishing_name, :release_number

  def initialize(id,publishing_name,release_number)
    @id = id
    @publishing_name = publishing_name
    @release_number = release_number
  end
end
