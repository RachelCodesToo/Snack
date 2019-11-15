class Snacks::NutsData

    def nuts 
        nuts = "almonds brazil-nuts cashews hazelnuts macadamia-nuts peanuts pecans pistachios".split.sort
        nuts 
    end 

end 


this=Snacks::CLI.new
this.call

