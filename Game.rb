class Game
  attr_accessor :current_player, :other_player

  def initialize(p1, p2)
    @current_player = p1
    @other_player = p2
  end

  def switch_turn
    @current_player, @other_player = @other_player, @current_player
  end

  def start
    loop_number = 1

    while current_player.lives_remaining > 0 && other_player.lives_remaining > 0 do
      q = Question.new
      puts "#{current_player.name} is up!"
      print "Q#{loop_number}: What is #{q.num1} #{q.operator} #{q.num2}? "
      guess = gets.chomp
      
      if guess.to_i == q.solution
        puts "CORRECT!\n"
        puts "#{current_player.name}: #{current_player.lives_remaining}/3 vs #{other_player.name}: #{other_player.lives_remaining}/3\n\n"
      else
        puts "Nah."
        @current_player.lives_remaining -= 1
        puts "#{current_player.name}: #{current_player.lives_remaining}/3 vs #{other_player.name}: #{other_player.lives_remaining}/3\n\n"
      end

      self.switch_turn
      loop_number += 1
    end
    puts "WINNER: *** #{current_player.lives_remaining > 0 ? current_player.name : other_player.name} ***"
  end

end