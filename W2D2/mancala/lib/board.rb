require 'byebug'
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
      current_cup = @cups[((start_pos + i) % @cups.length)]
      if current_player_name == @name1
        current_cup << stones.pop unless ((start_pos + i) % @cups.length) == 13
        i += 1
      elsif current_player_name == @name2
        current_cup << stones.pop unless ((start_pos + i) % @cups.length) == 7
        i += 1
      end
    end
    render
    next_turn(@cups.index(current_cup))
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].count == 1
      :switch
    else
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? { |cup| cup.empty? }
    return true if @cups[7..13].all? { |cup| cup.empty? }
    false
  end

  def winner
    return @name1 if @cups[6].count(:stone) > @cups[13].count(:stone)
    return @name2 if @cups[13].count(:stone) > @cups[6].count(:stone)
    return :draw if @cups[13].count(:stone) ==  @cups[6].count(:stone)
  end
end
