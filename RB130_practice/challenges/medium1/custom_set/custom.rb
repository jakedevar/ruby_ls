class CustomSet
  attr_reader :set

  def initialize(set = [])
    @set = set
  end

  def empty?
    set.empty?
  end

  def contains?(int)
    set.include? int
  end

  def subset?(other)
    return true if set == other.set
    return false if set.size > other.set.size
    copy = other.set.clone
    other.set.size.times { copy.pop; return true if set == copy }
    copy = other.set.clone
    other.set.size.times { copy.shift; return true if set == copy }
    false
  end

  def disjoint?(other)
    set.each { |ele| return false if other.set.include?(ele) }
    true
  end

  def eql?(other)
    set.sort.uniq == other.set.sort.uniq
  end

  def add(int)
    set << int if !set.include?(int)
    self
  end

  def intersection(other)
    res = []
    set.each { |e| res << e if other.set.include?(e) } if !other.empty? && !empty?
    CustomSet.new(res)
  end

  def difference(other)
    res = set - other.set
    CustomSet.new(res)
  end

  def union(other)
    res = set + other.set
    CustomSet.new(res.uniq.sort)
  end

  def ==(other)
    set == other.set
  end
end
