class Player
  attr_accessor :name, :lives_remaining

  LIVES = 3

  def initialize(name)
    @name = name
    @lives_remaining = LIVES
    @score = 0
  end

  def name_prompt
    print "#{name}, enter your name: "
    new_name = gets.chomp
    self.name = new_name if new_name != ""
    puts "Welcome, #{name}!\n"
  end

end