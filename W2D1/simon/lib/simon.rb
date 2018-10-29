class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play

  end

  def take_turn
    show_sequence
    require_sequence
    @sequence_length += 1
    round_success_message if !@game_over
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence

  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @seq = [] if @game_over == true
    @game_over = false
    @sequence_length = 1
  end
end
