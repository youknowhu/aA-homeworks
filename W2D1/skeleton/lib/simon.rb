class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      take_turn
      system("clear")
    end

    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence

    unless game_over
      round_success_message
      @sequence_length +=  1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
      puts "Repeat the sequence by entering the color sequence on each line."
      @seq.each do |color|
        user_input = gets.chomp
        if color != user_input
          @game_over = true
          break
        end
      end
      sleep 0.25
    end

  def add_random_color
    seq << COLORS.sample
  end

  def round_success_message
    puts "Good job. You made it through the round. Here's the next sequence:"
  end

  def game_over_message
    puts "Game Over. Your score is #{sequence_length - 1}"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end


if __FILE__ == $PROGRAM_NAME
  simon_game = Simon.new
  simon_game.play
end
