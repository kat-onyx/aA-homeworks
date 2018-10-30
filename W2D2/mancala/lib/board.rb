class Board
  attr_accessor :cups, :name1, :name2

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups =  Array.new(14) { Array.new }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups = @cups.each_with_index do |cup, idx|
      if idx != 6 && idx != 13
        4.times { cup << :stone }
      end
    end
    @cups
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 14 || start_pos < 0
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    i = 1
    until stones.empty?
      if current_player_name == @name1
        if @cups[start_pos + i] == 6
          @cups[start_pos + i] << stones.pop
          i += 1
        end
      elsif current_player_name == @name2
        if @cups[start_pos + i] == 13
          @cups[start_pos + i] << stones.pop
          i += 1
        end
      end
    end
    render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
