class Library
	@@accounts = []
	@@books = []

	def initialize(titles)
		titles.each do |title|
			@@books << Book.new(title)
		end
	end

	def Library.add_account(username)
		@@accounts << Account.new(username)
	end

	def Library.add_book(title)
		@@books << Book.new(title)
	end

	def Library.show_all_books
		@@books.each do |book|
			puts book.title	
		end
	end

	def Library.show_account_status(username)
		my_books = login(username).books
		puts username + " borrowed: "
		if my_books.size == 0
			puts '0'
		else
			my_books.each do |book|
				puts book.title
			end
		end
	end

	def Library.show_all_accounts
		@@accounts.each do |account|
			puts account.username
		end
	end

	def Library.login(username)
		@@accounts.detect { |account| account.username == username }
	end

	class Account
		attr_accessor :username, :books

		def initialize(username)
			@username = username
			@books = []
		end

		def borrowing_book(titles)
			titles.each do |title|
				@books << Book.new(title)
			end
		end

		def returning_book(titles)
			titles.each do |title|
				book = @books.detect{ |book| book.title == title}
				@books.delete(book)
			end
		end
	end

	class Book
		attr_accessor :title

		def initialize(title)
			@title = title
		end 
	end
end

books = ['history', 'math', 'technology', 'painting']
Library.new(books)

Library.add_book('networking')
Library.show_all_books

Library.add_account('luong')
Library.show_account_status('luong')

luong = Library.login('luong')

books = ['history', 'technology']
luong.borrowing_book(books)
Library.show_account_status('luong')

books = ['technology']
luong.returning_book(books)
Library.show_account_status('luong')

