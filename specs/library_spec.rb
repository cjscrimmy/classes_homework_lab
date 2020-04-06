require("minitest/autorun")
require("minitest/reporters")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../library")

class TestLibrary < MiniTest::Test
  def setup()
    @library = Library.new([{ title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } },
                            { title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } },
                            { title: "wuthering heights", rental_details: { student_name: "Liz", date: "16/04/19" } }])
  end

  def test_get_books
    books = [{ title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } },
        { title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } },
        { title: "wuthering heights", rental_details: { student_name: "Liz", date: "16/04/19" } }]
    assert_equal(books, @library.books)
  end

  def test_get_book_info_using_title
    book = { title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } }
    assert_equal(book, @library.find_book_by_title("lord_of_the_rings"))
  end

  def test_get_rental_info_using_title
    rental_info = { student_name: "Anonymous", date: "06/06/06" }
    assert_equal(rental_info, @library.find_rental_info_using_title("dune"))
  end

  #not sure test is correct
  def test_add_new_book_by_title
    #new_book = { title: "alice in wonderland", rental_details: { student_name: "", date: "" } }
    books = [{ title: "lord_of_the_rings", rental_details: { student_name: "Jeff", date: "01/12/16" } },
        { title: "dune", rental_details: { student_name: "Anonymous", date: "06/06/06" } },
        { title: "wuthering heights", rental_details: { student_name: "Liz", date: "16/04/19" } }]
    @library.add_new_book_by_title("alice in wonderland")
    assert_equal(4, books.count())
  end

  def test_update_rental_details_of_book
    book_rental_details = { student_name: "Lewis", date: "02/04/20" } 
    assert_equal(book_rental_details, @library.update_rental_details_of_book("lord_of_the_rings", "Lewis", "02/04/20"))
  end
end
