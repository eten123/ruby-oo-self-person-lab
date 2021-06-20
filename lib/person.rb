# your code goes here

require "pry"
class Person

attr_reader :name
attr_accessor :bank_account, :happiness, :hygiene

def initialize(name, bank_account = 25, happiness = 8, hygiene = 8) # to initialize bank account with 25 i have to put in the argument
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
    #binding.pry
end

# def happiness
#     if @happiness > 10 #have to use the @ symbol here because instance variables only can be called in other methods
#       @happiness = 10   #just using the regular happines is just what the instance variable is initally set to not the instance variable is 
#     end
# end

def happiness=(points) #why do we need points?
    @happiness = points

    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    else
      @happiness
    end
  end

  def hygiene=(points) #why do we need points is it because we need something to pass in as a argument that can be manipulated later
    @hygiene = points

    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

    def happy?
     @happiness > 7
    end

    def clean?
        @hygiene > 7
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 #calls the object via self and then goes into the attribute hygiene and 
        "♪ Rub-a-dub just relaxing in the tub ♫"  #adds four to the value 
    end        
    
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend) #this is one argument, an instance of the Person class. basically friend is another instance
            self.happiness+=3
            friend.happiness+=3
            "Hi #{friend.name}! It's #{@name}. How are you?"
          end
        
          def start_conversation(friend, topic)
            if topic == "politics"
              friend.happiness-=2
              self.happiness-=2
              "blah blah partisan blah lobbyist"
            elsif topic == "weather"
              friend.happiness+=1
              self.happiness+=1
              "blah blah sun blah rain"
            else
              "blah blah blah blah blah"
            end
          end
    
end
