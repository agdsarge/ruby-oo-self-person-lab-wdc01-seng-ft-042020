# your code goes here
class Person
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness_points = 8
        @hygiene = 8
    end
    attr_reader :name, :hygiene, :bank_account

    def change_happiness(new_score)
        if new_score >= 10
            @happiness_points = 10
        elsif new_score <= 0
            @happiness_points = 0
        else
            @happiness_points = new_score
        end
    end

    def change_hygiene(new_score)
        if new_score >= 10
            @hygiene = 10
        elsif new_score <= 0
            @hygiene = 0
        else
            @hygiene = new_score
        end
    end

    def change_bank_account(dollars)
        @bank_account += dollars
    end





end


bob_dylan = Person.new("bob")

bob_dylan.change_hygiene(12)
puts bob_dylan.hygiene

bob_dylan.change_bank_account(100)
puts bob_dylan.bank_account
