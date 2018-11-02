class LRUCache
  def initialize(size)
    @size = size
    @buckets = []
  end

  def count
    @buckets.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    if @buckets.include?(el)
      @buckets.delete(el)
      @buckets.push(el)
    elsif !@buckets.include?(el) && @buckets.length == @size
      @buckets.shift
      @buckets.push(el)
    else
      @buckets.push(el)
    end
    return nil
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @buckets
    return nil
  end

  private
  # helper methods go here!
end
