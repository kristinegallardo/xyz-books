class ConvertIsbn < ActiveInteraction::Base
  string :isbn, default: nil

  def execute
    if ISBN_Tools.is_valid_isbn13?(isbn)
      result = ISBN_Tools.isbn13_to_isbn10(@isbn)
      ISBN_Tools.hyphenate_isbn10(result)
    else ISBN_Tools.is_valid_isbn10?(isbn)
      result = ISBN_Tools.isbn10_to_isbn13(@isbn)
      ISBN_Tools.hyphenate_isbn13(result)
    end
  end
end