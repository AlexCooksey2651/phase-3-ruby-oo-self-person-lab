# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    # attr_writer :happiness, :hygiene

    def initialize(name, bank_account=25, happiness=8, hygiene=8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(value)
        if value <= 10 && value >= 0
            @happiness = value
        end
    end

    # def happiness
    #     @happiness
    # end

    def hygiene=(value)
        if value <= 10 && value >= 0
            @hygiene = value
        else 
            @hygiene = self.hygiene
        end
    end

    # def hygiene
    #     @hygiene
    # end

    def clean?
        self.hygiene > 7
    end

    def happy?
        self.happiness > 7
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    
    def take_bath
        if self.hygiene <= 6
            self.hygiene += 4
        else
            self.hygiene = 10
        end
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        if self.happiness <= 8
            self.happiness += 2
        else 
            self.happiness = 10
        end

        if self.hygiene >= 3
            self.hygiene -= 3
        else
            self.hygiene = 0
        end
        "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            if self.happiness >= 2 
                self.happiness -= 2
            else
                self.happiness = 0
            end
            if friend.happiness >=2
                friend.happiness -= 2
            else 
                friend.happiness = 0
            end
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end