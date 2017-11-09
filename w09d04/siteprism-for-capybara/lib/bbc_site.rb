class BBCSite

	def bbc_home_page
		Pages::BBCHomepage.new
	end

	def bbc_sign_in_page
		Pages::BBCSignInPage.new
	end

end