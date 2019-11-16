class Snacks::NutsData

    attr_reader :type, :nut_facts

    def initialize(type=nil, nut_facts=nil)
      @type = type 
      @nut_facts = nut_facts
    end 
  
    def nuts
      nuts = ["almonds", "brazilNuts", "cashews", "hazelnuts", "macadamiaNuts", "peanuts","pecans", "pistachios"]
    end
    
    def self.all
      @@all << self 
    end 
  
    def self.about_nut_info #=> onject <NutsData302405205>.type & facts
      scraper_obj = Snacks::Scraper.new # gives access to all data in Scraper class
      doc = scraper_obj.get_page
      type_aka_header = doc.css("div.plp h1").text
      
      "\nAbout #{type_aka_header}"
      facts = doc.css("div.formatted-content.description p").collect do |p|
        "\n#{p.text}" if !p.text.start_with?("We also")
      end 
      self.new(type_aka_header, facts)
    end
        
end 



