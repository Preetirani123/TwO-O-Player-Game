class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end


  def use_life
    @lives -=1
  end

  def dead
    @lives == 0
  end

  def new_question
    new_question = Question.new
    new_question.questions(name)
    print '>'
    @playerinput = gets.chomp

    if new_question.answer?(@playerinput.to_i)
      puts 'YES! You are correct.'
    else
      puts 'Seriously? NO!'
      use_life
    end
  end
end