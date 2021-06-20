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
     @happy > 7
    end

end