class Snacks::CLI

    def call 
        intro
        show_nuts_list
        show_data
        choose_another?
      end
    
      def intro 
        puts "Hi, Welcome to Nutipedia!"
        # sleep 2
        puts "Here is a list of some of the most common nuts!"
        # sleep 2
      end
    
      def show_nuts_list
        these = Snacks::NutsData.new
        these.nuts.each.with_index(1) do |nut, index|
          puts "\n#{index}. #{nut.capitalize}"
        end
        # sleep 2
      end
    
      def choice_of_nut
        while true
          print "\nChoose the list number of the nut that you're interested in: "
          input = gets.chomp.to_i - 1
          if !(0..7).include?(input)
            puts "Please enter a number between 1 and 8"
          else
            break
          end
        end
        input
      end  
    
      def show_data
        data = Snacks::NutsData.about_nut_info
        puts "\n========== #{data.type} =========="
        data.nut_facts.each do |fact|
          puts fact
        end
      end
      
      def choose_another?
        while true
          print "\nWould you like to choose another nut variety to learn more about (y/n) or 'exit':  "
          input = gets.chomp.downcase.to_s
          if input == "y" 
              show_nuts_list
              show_data
          elsif input == 'n' || input == 'exit'
              goodbye  
          else
              puts "\nPlease choose (y/n) or type 'exit'."
          end 
        end 
      end 
    
      def goodbye
        puts "\nThank you for visiting, see you next time!"
        exit!
      end 

end