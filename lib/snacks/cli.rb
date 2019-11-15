class Cli 

    def call 
        #welcome the user to snacks
        #show the user all the items in the SNACKLIST categories
        #ask the user to select a SNACKLIST category to learn more about 
        #get input from user to show more info about the snack 
        welcome
        show_snacklist
        select_snack
        snacklist 
    end 

    def welcome
        puts "Welcome to Snacks!"
        puts "Here you will find the variety of snacks available on Nuts.com and their nutritional facts."
    end 

    def show_snacklist 
        puts "1. dried fruits"
        puts "2. trail mix"
        puts "3. mixed nuts"
    end 

    def select_snack
        "Which Snack do you want to learn more about?"
        input = gets.chomp
        if input > 0 && input < 4 #input_invalid(input)
            show_snack
        else 
            show_snacklist
        end 
    end 

    # def input_invalid(input)
    #   input > 0 && input < 4 
    # end 

    


end