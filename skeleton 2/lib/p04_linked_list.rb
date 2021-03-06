class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  include Enumerable

  def initialize
    @head = Node.new
    @tail = Node.new
    @head.next = @tail
    @tail.prev = @head
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @head.next
  end

  def last
    @tail.prev
  end

  def empty?
    @head.next == @tail || @tail.prev == @head
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
    node = Node.new(key,val)
    @tail.prev.next = node
    node.prev = @tail.prev
    @tail.prev = node
    node.next = @tail
  end

  def update(key, val)
    self.each do |node|
      node.val = val if node.key == key
    end

  end

  def remove(key)
  end

  def each 
    # @head.next
    # yield 

    # we start at head.next
    # loop until we find a node without a head or a tail
    
    #  
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
