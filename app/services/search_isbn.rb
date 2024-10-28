class SearchIsbn < ActiveInteraction::Base
  string :isbn, default: nil

  def execute
    if ISBN_Tools.is_valid_isbn13?(isbn)
      book_isbn_13 = Book.find_by(isbn_13: isbn)
    else ISBN_Tools.is_valid_isbn10?(isbn)
      book_isbn_13 = ConvertIsbn.run(isbn: isbn).result
      book_isbn_13 = Book.find_by(isbn_13: book_isbn_13)
    end

    return { success: false, message: "Record not found in database", status: :not_found } unless book_isbn_13.present?

    { 
      success: true,
      data:
      {
        id: book_isbn_13.id,
        title: book_isbn_13.title,
        authors: book_isbn_13.authors.pluck(:first_name, :middle_name, :last_name).map { |name| name.compact.join(" ") }.join(", "),
        edition: book_isbn_13.edition,
        price: book_isbn_13.price,
        isbn_13: book_isbn_13.isbn_13,
        publisher: book_isbn_13.publisher.name,
        publication_year: book_isbn_13.publication_year,
        image_url: book_isbn_13.image_url
      },
      status: :ok
    }
  end
end