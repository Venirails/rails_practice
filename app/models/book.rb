class Book < ActiveRecord::Base
	before_save :merge_the_names
	after_destroy :write_to_log_file
	
	def merge_the_names
		self.book_name = self.book_name + " By " + self.author
	end
	def write_to_log_file
		logger.error "Alas!..A book has been deleted by mistake...."
	end
end
