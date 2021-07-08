
# your code goes here
require 'pry'

class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account 

     
    
    def initialize (name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8 
    end 

    def change_point(point)
        if point < 0 
            return 0 
        elsif point > 10 
            return 10 
        else  
            return point 
        end 
    end 
    
    def greater_than(point)
        if point > 7 
            return true 
        else 
            return false 
        end 
    end 


    def happiness=(point)
        @happiness = change_point(point)
    end 

    def hygiene=(point)
        @hygiene = change_point(point)
    end 

    def happy?
         greater_than(@happiness)
    end 
    
    def clean? 
        greater_than(@hygiene)
   end 

   def get_paid(salary)
    @bank_account += salary
     "all about the benjamins"
   end 

   def take_bath 
        self.hygiene =  @hygiene+4
        "♪ Rub-a-dub just relaxing in the tub ♫"
   end
   
   def work_out 
        self.hygiene = @hygiene-3
        self.happiness = @happiness+2
        "♪ another one bites the dust ♫"
   end 

   def call_friend(person)
        self.happiness = @happiness + 3 
        person.happiness = person.happiness + 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
   end 

   def start_conversation(person, topic)
    if topic == "politics"
        person.happiness = person.happiness - 2
        self.happiness = @happiness - 2 
        'blah blah partisan blah lobbyist'
    elsif topic == "weather" 
        person.happiness = person.happiness + 1
        self.happiness = @happiness + 1
        'blah blah sun blah rain'
    else 
        'blah blah blah blah blah'
    end 
   end 
end 