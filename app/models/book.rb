class Book < ActiveRecord::Base
	before_save :merge_the_names

	
	def merge_the_names
		self.book_name = self.book_name + " By " + self.author
	end
	def write_to_log_file
		logger.error "Alas!..A book has been deleted by mistake...."
	end
end
