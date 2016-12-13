require('pry')

class Game

  def initialize(player1, player2)
    @player1 = player1.to_s
    @player2 = player2.to_s
    @winner = ""
  end

  def tester
    check = @player1.ord - @player2.ord
    case check
    when 2, -3, 1
      @winner = "player 2 wins"
    when -1, 3, -2
      @winner = "player 1 wins"
    else
      @winner ="No Winner , its a draw !! "

    end

    return @winner

  end


 #  def tester
 #    if @player1 == @player2 
 #      @winner = 'Draw both picked the same'
 #    else
 #      if @player1 == "r" && @player2 == "s"
 #        @winner = 'Player1 Wins ( Rock beats Scissors )'
 #        elsif @player1 == "p" && @player2 == "r"
 #          @winner = 'Player1 Wins ( Paper beats Rock )'
 #        elsif @player1 == "s" && @player2 == "p"
 #          @winner = 'Player1 Wins ( Scissors beats Paper )'
 #      else
 #        if @player2 == "r" && @player1 == "s"
 #          @winner = 'Player2 Wins ( Rock beats Scissors )'
 #            elsif @player2 == "p" && @player1 == "r"
 #              @winner = 'Player2 Wins ( Paper beats Rock )'
 #            elsif @player2 == "s" && @player1 == "p"
 #              @winner = 'Player2 Wins ( Scissors beats Paper )'
 #          end
 #      end
 #    end
 #   return @winner.to_s
 # end
end
