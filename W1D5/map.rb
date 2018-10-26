class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |pair|
      if pair[0] == key
        pair[1] = value
        return @map
      end
    end
    @map << [key, value]
  end

  def get(key)
    @map.each do |pair|
      if pair[0] == key
        return pair[1]
      end
    end
  end

  def delete(key)
    @map.each_with_index do |pair, idx|
      if pair[0] == key
        @map.delete(@map[idx])
      end
    end
  end

  def show
    @map
  end
end
