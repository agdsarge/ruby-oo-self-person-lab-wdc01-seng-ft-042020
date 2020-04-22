# your code goes here
class Person
    
    attr_reader :name, :hygiene, :bank_account, :happiness
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
   

    def change_happiness(new_score)
        if new_score >= 10
            @happiness = 10
        elsif new_score <= 0
            @happiness = 0
        else
            @happiness = new_score
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

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        self.change_bank_account(salary)
        "all about the benjamins"
    end

    def take_bath
        self.change_hygiene(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.change_hygiene(@hygiene -3)
        self.change_happiness(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.change_happiness(friend.happiness + 3)
        self.change_happiness(@happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

end


bob_dylan = Person.new("bob")
stella = Person.new("stella")

bob_dylan.change_hygiene(2)
#puts bob_dylan.hygiene

bob_dylan.change_bank_account(100)
puts bob_dylan.bank_account

puts bob_dylan.happy?

puts bob_dylan.get_paid(2000)
puts bob_dylan.bank_account
puts bob_dylan.take_bath
puts bob_dylan.hygiene
puts bob_dylan.work_out
puts bob_dylan.hygiene
puts bob_dylan.happiness
puts stella.call_friend(bob_dylan)