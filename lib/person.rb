# your code goes here

class Person#(name)
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(amt)
    @happiness =  if amt > 10
                    10
                  elsif amt < 0
                    0
                  else
                    amt
                  end    
  end
  
  def hygiene=(amt)
    @hygiene =  if amt > 10
                  10
                elsif amt < 0
                  0
                else
                  amt
                end 
  end

  def happy?
    self.happiness > 7 # ? true : false
  end

  def clean?
    self.hygiene > 7 # ? true : false
  end

  def get_paid(amount)
    self.bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    '♪ another one bites the dust ♫'
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == 'politics'
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end

end


# Flatiron's solution

# def start_conversation(friend, topic)
#   case topic
#   when "politics"
#     [self, friend].each { |person| person.happiness -= 2 }
#     "blah blah partisan blah lobbyist"
#   when 'weather'
#     [self, friend].each { |person| person.happiness += 1 }
#     "blah blah sun blah rain"
#   else
#     "blah blah blah blah blah"
#   end
# end
