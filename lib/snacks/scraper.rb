class Snacks::Scraper 
  

  def get_page #=> doc
    user = Snacks::CLI.new  
    get_from = Snacks::NutsData.new
    doc = Nokogiri::HTML(open("https://nuts.com/nuts/#{get_from.nuts[user.user_chooses_nut]}"))
    doc
  end
  
  
end 
