# frozen_string_literal: true

# Create Authors

first_author = Author.create!(first_name: 'Joel', last_name: 'Hartse')

second_author = Author.create!(first_name: 'Hannah', middle_name: 'P.', last_name: 'Templer')

third_author = Author.create!(first_name: 'Marguerite', middle_name: 'Z.', last_name: 'Duras')

fourth_author = Author.create!(first_name: 'Kingsley', last_name: 'Amis')

fifth_author = Author.create!(first_name: 'Fannie', middle_name: 'Peters', last_name: 'Flagg')

sixth_author = Author.create!(first_name: 'Camille', middle_name: 'Byron', last_name: 'Paglia')

seventh_author = Author.create!(first_name: 'Rainer', middle_name: 'Steel', last_name: 'Rilke')

# Create Publishers

first_publisher = Publisher.create!(name: 'Paste Magazine')

second_publisher = Publisher.create!(name: 'Publishers Weekly')

third_publisher = Publisher.create!(name: 'Graywolf Press')

fourth_publisher = Publisher.create!(name: 'McSweeney\'s')

# Create Books

first_book = Book.create!(publisher: first_publisher, title: 'American Elf', isbn_13: '978-1-891830-85-3',
                          publication_year: 2004, edition: 'Book 2', price: 1000,
                          image_url:  '../assets/american_elf_2004.png')

second_book = Book.create!(publisher: second_publisher, title: 'Cosmoknights', isbn_13: '978-1-60309-454-2',
                           publication_year: 2019, edition: 'Book 1', price: 2000,
                           image_url: '../assets/cosmoknights_2019.png')

third_book = Book.create!(publisher: third_publisher, title: 'Essex County', isbn_13: '978-1-60309-038-4',
                          publication_year: 1990, price: 500,
                          image_url: '../assets/essex_county_1990.png')

fourth_book = Book.create!(publisher: third_publisher, title: 'Hey Mister (Vol 1)', isbn_13: '978-1-891830-02-0',
                           publication_year: 2000, edition: 'After School Special', price: 1200,
                           image_url: '../assets/hey_mister_2000.png')

fifth_book = Book.create!(publisher: fourth_publisher, title: 'The Underwater Welder', isbn_13: '978-1-60309-398-9',
                          publication_year: 2004, edition: 'Book 2', price: 1000,
                          image_url: '../assets/The Underwater Welder.png')

# Create Book Authors for Book and Author associated records

BookAuthor.create!(book: first_book, author: first_author)

BookAuthor.create!(book: first_book, author: second_author)

BookAuthor.create!(book: first_book, author: third_author)

BookAuthor.create!(book: second_book, author: fourth_author)

BookAuthor.create!(book: third_book, author: fourth_author)

BookAuthor.create!(book: fourth_book, author: second_author)

BookAuthor.create!(book: fourth_book, author: fifth_author)

BookAuthor.create!(book: fourth_book, author: sixth_author)

BookAuthor.create!(book: fifth_book, author: seventh_author)
