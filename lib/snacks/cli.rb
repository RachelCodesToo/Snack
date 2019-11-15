class Snacks::CLI

    def call 
        intro
        show_nuts_list
        select_snack
        show_snacklist 
    end 

    def intro
        puts "Hi! Welcome to Nuts!"
        puts "Here you will find the variety of nuts available on Nuts.com and their nutritional facts"
        sleep 2
    end 

    def show_nuts_list
        these = Snacks::NutsData.new 
        puts "Here is a list of some of the most common type of nut variety!"
        sleep 2
        these.nuts.each.with_index(1) do |nut,index|
            puts "\n#{index}. #{nut.capitalize}"
        end 
        sleep 2
    end 

    def user_chooses_nut 
        # "Which Snack do you want to learn more about?"
        # input = gets.chomp
        # if !input_valid(input)  # input > 0 && input < 4
        #     select_snack
        # else 
        #     show_snacklists
        # end 
        print "\nChoose the list number of tbe nut that you're interested in: "
        input = gets.chomp.to_i - 1
        input
    end  

    # def input_valid(input)
    #   input.to_i > 0 && input.to_i < 4 
    # end 

    # def show_snacklist
    #     puts "this is the info of the snack you selected"

    # end 

    def show_data
        #this will show the info of the item selected
    end 

    def choose_another?
        these = Snacks::NutsData.new
        puts "\nChoose another nut variety to learn more about: "
        sleep 2 
        these.nuts.each.with_index(1) do |nut, index|
            puts "\n#{index}. #{nut.capitalize}"
        end 
        input = gets.chomp.to_i - 1
        input
    end 

    #def goodbye
        #puts "Thank you for visiting, see you next time!"
    #end 

end