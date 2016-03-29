class TodoList
    # methods and stuff go here
    attr_reader :tittle, :chores

    def initialize(tittle)
    	@tittle = tittle
    	@person = "Ervin"
    	@chores = Array.new
    end

    def add_chore(new_chore)
    	chore = Chore.new(new_chore)
    	@chores.push(chore)
    end

    def print_list
    	puts ""
    	puts "#{@person}}'s #{@tittle}"
    	puts "*******************************"
    	print_chores
    	puts "*******************************"
    end

    def print_chores
    	@chores.each do |chore|
    		chore.print_each_chore(chore)
    	end
    end

    def delete_chore(chore_position)
        @chores.delete_at(chore_position)
    end

    def update_title
        @title = "Chore List"  
    end

    def finished_chore(chore_position)
        @chores.at(chore_position).finished_chore_status
    end

    def not_finished
        @chores.each do |chore|
            chore.not_finished 
        end
    end

end

class Chore
    # methods and stuff go here
    attr_reader :description, :due_date, :finished_status

    def initialize(item_description)
    	@description = item_description
    	@due_date = "one week"
    	@finished_status = false
    end

    def complete_item_status
    	@finished_status = true
    end

    def print_each_item(item)
        puts
        puts "Chore: #{@description}"
        puts "Due date: #{@due_date}"
        puts "Finished status: #{@finished_status}" 
        puts
    end

    def not_finished
        @finished_status = false
    end
end