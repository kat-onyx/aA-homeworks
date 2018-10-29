class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    # sleep(2)
    # system "clear"
    user_input = require_sequence
    if !@game_over
      @sequence_length += 1
      round_success_message
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
    puts "Enter the sequence...if you can remember it!"
    puts ">"
    sequence = gets.chomp.split(" ")
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message
    puts "It's not over, yet!"
  end

  def game_over_message
    puts "Whoops! Not the right color."
  end

  def reset_game
    @seq = [] if @game_over == true
    @game_over = false
    @sequence_length = 1
  end
end
