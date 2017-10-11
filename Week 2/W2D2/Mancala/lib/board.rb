class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) {[]}
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_index do |i|
      if i == 13 || i == 6
        next
      else
        4.times { @cups[i] << :stone }
      end
    end

  end

  def valid_move?(start_pos)
    positions = %w(0 1 2 3 4 5 7 8 9 10 11 12)
    if !positions.include?(start_pos)
      raise "Invalid starting cup"
    end
  end

  def make_move(start_pos, current_player_name)
    stones = @cups[start_pos]
    @cups[start_pos] = []

    idx = start_pos
    until stones.empty?
      idx += 1
      idx = 0 if idx > 13
      case idx
      when 6
        @cups[6] << stones.pop if current_player_name == @name1
      when 13
        @cups[13] << stones.pop if current_player_name == @name2
      else
        @cups[idx] << stones.pop
      end
    end

    render
    next_turn(idx)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    if ending_cup_idx == 6 || ending_cup_idx == 13
      :prompt
    elsif @cups[ending_cup_idx].length == 1
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
    @cups[0..5].all? { |arr| arr.empty? } || @cups[7..12].all? { |arr| arr.empty? }
  end

  def winner

      if @cups[6].length > @cups[13].length
        return @name1
      elsif @cups[6].length < @cups[13].length
        return @name2
      elsif @cups[6].length == @cups[13].length
        return :draw
      end

  end

end
