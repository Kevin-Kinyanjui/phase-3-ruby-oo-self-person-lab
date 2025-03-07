class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(value)
    @happiness = value.clamp(0, 10)
  end

  def hygiene=(value)
    @hygiene = value.clamp(0, 10)
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary_amount)
    @bank_account += salary_amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
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
      self.happiness -= 2
      friend.happiness -= 2
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

=begin
kevin = Person.new('Kevin')
mike = Person.new('Mike')
puts kevin.name
puts kevin.happiness
puts kevin.hygiene
puts kevin.bank_account
puts kevin.work_out
puts kevin.take_bath
puts kevin.happiness
puts kevin.hygiene
puts kevin.call_friend(mike)
puts kevin.start_conversation(mike, 'politics')
puts kevin.start_conversation(mike, 'weather')
=end
