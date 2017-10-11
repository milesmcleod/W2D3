class TowersOfHanoi

  attr_accessor :grid
  def initialize
    @grid = [[3,2,1], [], []]
  end

  def move(start_pos, end_pos)
    if @grid[end_pos].empty? || @grid[start_pos].last < @grid[end_pos].last
      @grid[end_pos] << @grid[start_pos].pop
    else
      raise "Invalid move"
    end
  end

  def won?
    return true if @grid[1] == [3,2,1] || @grid[2] == [3,2,1]
    false
  end

  def render
    print @grid
  end

  def play
    until self.won?
      self.render
      puts "Where from?"
      move_from = gets.chomp.to_i
      puts "Where to?"
      move_to = gets.chomp.to_i
      move(move_from, move_to)
    end
    puts "Congratulations"
  end

end
