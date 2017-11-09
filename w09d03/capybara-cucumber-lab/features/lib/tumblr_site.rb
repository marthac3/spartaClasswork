require 'require_all'
require_rel 'pages'

class TumblrSite

	def tumblr_homepage
		TumblrHomepage.new
	end

	def tumblr_login_page
		TumblrLoginPage.new
	end

	def tumblr_dashboard
		TumblrDashboard.new
	end

end