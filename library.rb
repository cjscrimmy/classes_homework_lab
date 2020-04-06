class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def find_book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def find_rental_info_using_title(title)
    book = find_book_by_title(title)
    return book[:rental_details]
  end
 
  # not working with current test, not sure if test is correct
  def add_new_book_by_title(new_title)
    new_book = { 
      title: new_title, 
      rental_details: { 
      student_name: "", 
      date: "" } }
    books.push(new_book)
  end

  def update_rental_details_of_book(title, student_name, date)
    rental_details = find_rental_info_using_title(title)
    rental_details[:student_name] = student_name
    rental_details[:date] = date
    return rental_details
  end
end
