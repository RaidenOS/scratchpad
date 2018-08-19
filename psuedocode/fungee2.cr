class Vec2D
  property x : Int32
  property y : Int32
  def initialize(@x : Int32 = 0, @y : Int32 = 0)
  end
end

class Matrix
  def initialize
    @matrix = Array(Array("")))
    @pos = new Vec2D
  end
  
  def forward(x, y)
    @pos.x += x
    @pos.y += y
    get
  end
  
  def get(x = @pos.x, y = @pos.y)
    @matrix[x][y]?
  end
end

class FungeeMatrix < Matrix
  def initialize
    super
    @direction = Vec2D(1, 0)
  end
  
  def step
    case forward(@direction.x, @direction.y)
    when .empty?
    when "v"
      @direction = new Vec2D(0, 1)
    when ">"
      @direction = new Vec2D(1, 0)
    when "<"
      @direction = new Vec2D(-1, 0)
    when "^"
      @direction = new Vec2D(0, -1)
    else
      # Execute code in blocks here
    end
  end
end
