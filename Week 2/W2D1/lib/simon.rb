class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    p "Welcome to Simon - the memory game!"
    until @game_over == true
      take_turn
    end

    game_over_message(@seq)
    reset_game
  end

  def take_turn
    show_sequence
    sleep(1)
    system("clear")
    guess = require_sequence
    unless @game_over
      round_success_message(@seq)
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    p @seq.dup
  end

  def require_sequence
    p "please provide the correct sequence separated by spaces"
    gets.chomp.split(" ")
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message(*args)
    p "you correctly guessed the sequence: #{args.join(", ")}"
  end

  def game_over_message(*args)
    p "you incorrectly guessed the sequence: #{args.join(", ")}"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end

if __FILE__ == $0
  game = Simon.new
  game.play
end
