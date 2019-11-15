require "nokogiri"
require "open-uri"

class Snacks::Scraper 
    
    def get_page
        user = Snacks::CLI.new
        user.user_chooses_nut
    end 

end 
