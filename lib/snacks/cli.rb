class Snacks::CLI

    def call 
        intro
        show_nuts_list
        show_data
        choose_another?
    end 

    def intro
        puts "Hi! Welcome to Nuts!"
        sleep 2
        puts "Here is a list of some of the most common type of nut variety!"
        sleep 2
    end 

    def show_nuts_list
        these = Snacks::NutsData.new 
        these.nuts.each.with_index(1) do |nut,index|
            puts "\n#{index}. #{nut.capitalize}"
        end 
        sleep 2
    end 

    def user_chooses_nut 
        print "\nChoose the list number of tbe nut that you're interested in: "
        input = gets.chomp.to_i - 1
        input
    end  

    def show_data
        get = Scraper.new
        get.about_nut_info
    end 

    def choose_another?
        while true
            print "\nWould you like to choose another nut variety to learn more about: (y/n) "
            input = gets.chomp.downcase.to_s
            if input == "y" 
                show_nuts_list
                user_chooses_nut
            elsif input == "n"
                goodbye  
            end
        end 
    end 

    def goodbye
        puts "\nThank you for visiting, see you next time!"
        exit!
    end 

end