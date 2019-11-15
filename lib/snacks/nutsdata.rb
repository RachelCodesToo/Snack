class Snacks::NutsData

    def nuts
        nuts = ["almonds", "brazilNuts", "cashews", "hazelnuts", "macadamiaNuts", "peanuts","pecans", "pistachios"]
        nuts
    end
    
    def formatted_nuts
        nuts_form = nuts.collect do |nut|
        nut.include("Nuts") ? nut.gsub("Nuts", " Nuts") : nut
        end
        nuts_form
    end
        
end 



