class KnightPathFinder

  def initialize(pos)
    @init_pos = pos
    @visited_moves = [pos]
  end

  def self.valid_moves(pos)
    ans = []
    numbers = (-2..2).to_a - [0]
    numbers.each do |i|
      numbers.each do |j|
        if i.abs + j.abs == 3
          current = [pos[0] + i, pos[1] + j]
          ans << current if current.all? {|x| x.between?(0,7)}
        end
      end
    end
    ans
  end

  def print_moves
    p self.class.valid_moves
  end

  def new_move_postions(pos)
    valid_positions = self.class.valid_moves(pos)
    valid_positions -= @visited_moves
    @visited_moves += valid_positions
    valid_positions
  end

end
