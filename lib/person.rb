class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
      if new_happiness > 10
        @happiness = 10
      elsif new_happiness < 0
        @happiness = 0
      else
        @happiness = new_happiness
      end
    end

    def hygiene=(new_hygiene)
      if new_hygiene > 10
        @hygiene = 10
      elsif new_hygiene < 0
        @hygiene = 0
      else
        @hygiene = new_hygiene
      end
    end

    def happy?
    if @happiness > 7
        true
    else
        false
    end
  end
  def clean?
    if @hygiene > 7
        true
    else
        false
    end
  end
  def get_paid(salary)
    @bank_account+=salary
    p "all about the benjamins"
  end

  def take_bath
    self.hygiene = @hygiene+4
    p "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = @happiness+2
    self.hygiene = @hygiene-3
    p "♪ another one bites the dust ♫"
  end

  def call_friend(friends_name)
    friends_name.happiness = friends_name.happiness+3
    self.happiness = @happiness+3
    p "Hi #{friends_name.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
      if topic == 'politics'
        person.happiness = person.happiness-2
        self.happiness = @happiness-2
        p 'blah blah partisan blah lobbyist'
      elsif topic == 'weather'
        person.happiness = person.happiness+1
        self.happiness = @happiness+1
        p 'blah blah sun blah rain'
      else
        p 'blah blah blah blah blah'
      end
  end

end
