require './player_class'
require './questions_class'



puts "Player1 enter your name"
p1name= gets.chomp()
p1=Players.new(1, p1name)
p1.info


puts "Player2 enter your name"
p2name= gets.chomp()
p2=Players.new(2, p2name)
p2.info


turn =0
while p1.life > 0 && p2.life > 0
  turn += 1 
  
  if turn % 2 != 0
    question = Questions.new
    print "#{p1.name} " 
    question.question
    answer = Integer(gets)
    
    if question.check_question(answer) == true
      p1.get_life
      
    else    
      p1.set_life
    end
  else
    question = Questions.new
    print "#{p2.name} " 
    question.question
    answer = Integer(gets)
    
    if question.check_question(answer) == true
      p2.get_life
    else    
      p2.set_life
    end

  end
end

if p1.life == 0 || p2.life ==0
  puts "game over! #{p1.name} = #{p1.life} *** #{p2.name} = #{p2.life}"
end