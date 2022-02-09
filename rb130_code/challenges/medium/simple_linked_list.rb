class Element
  def initialize(data, nxt=nil)
    @data = data
    @next = nxt
  end

  def tail?
    @next.nil?
  end

  def next
    @next unless tail?
  end 

  def datum
    @data
  end
end

class SimpleLinkedList
  def initialize
    @list = []
  end

  def empty?
    @list.empty?
  end

  def size
    @list.size
  end

  def push(element)
    @list << Element.new(element)
  end

  def peek
    @list.first.datum
  end
end

p SimpleLinkedList.new.push(3)