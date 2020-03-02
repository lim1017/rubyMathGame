class Questions
  attr_accessor :num1, :num2, :answer

  def initialize()
    self.num1=rand(10)
    self.num2=rand(10)
    self.answer=self.num1 + self.num2
  end

  def question
    puts "what is #{num1} + #{num2}"
  end

  def check_question(a1)
    if a1 == self.answer
      puts "correct!"
       true
    else 
      puts "incorrect!"
      puts "The answer to #{num1} + #{num2} is === #{answer}"

      false
    end

  end  
end