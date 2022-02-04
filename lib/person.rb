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
        elsif value > 10 
            @happiness = 10
        elsif value < 0 
            @happiness = 0
        end
    end

    # def happiness
    #     @happiness
    # end

    def hygiene=(value)
        if value <= 10 && value >= 0
            @hygiene = value
        elsif value > 10 
            @hygiene = 10
        elsif value < 0 
            @hygiene = 0
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
        self.hygiene=(self.hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness=(self.happiness + 2)

        self.hygiene=(self.hygiene - 3)
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
            self.happiness=(self.happiness - 2)
            friend.happiness=(friend.happiness - 2)
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