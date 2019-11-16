class Snacks::Scraper 
  

  def get_page #=> doc
    users = Snacks::CLI.new  
    get_from = Snacks::NutsData.new
    doc = Nokogiri::HTML(open("https://nuts.com/nuts/#{get_from.nuts[users.choice_of_nut]}"))
    doc
  end
  
  
end 
