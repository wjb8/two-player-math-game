class Question
  attr_reader :num1, :num2, :operator, :solution, :expression

  OPERATORS = ["+", "-"] # add * and / later

  def initialize
    @num1 = rand(20)
    @num2 = rand(20)
    @operator = OPERATORS.sample
    
    if @operator == "+"
      @solution = @num1 + @num2
    elsif @operator == "-"
      @num1 += 20 if @num2 > @num1 # avoid negative answers for now.
      @solution = @num1 - @num2
    elsif @operator == "*"
      @solution = @num1 * @num2
    elsif @operator == "/"
      @solution = @num1 / @num2
    end

    @expression = "#{num1} #{operator} #{num2} equals #{solution}."
  end

end