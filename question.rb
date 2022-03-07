class Question
  attr_reader :number1, :number2, :sum
  # attr_accessor :sum
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @sum = [@number1, @number2].sum
  end

  def ask_question name
    puts "#{name}, what does #{number1} plus #{number2} equal?"
  end

  def check_answer
    return @sum 
  end  

end

# question  = Question.new()
# puts question.ask_question("Player1")
# puts question.sum(1, 4)