# frozen_string_literal: true

# define a custom set class
class CustomSet
  attr_accessor :set

  def initialize(set = [])
    @set = set
  end

  def empty?
    @set.empty?
  end

  def contains?(element)
    @set.include?(element)
  end

  # returns true if set is a subset of other
  def subset?(other)
    set.each do |element|
      return false unless other.contains?(element)
    end

    true
  end

  # returns true if all elements of set are unique from other
  def disjoint?(other)
    # return true if empty? || other.empty?
    return true if (set.size + other.set.size) == (set + other.set).uniq.size

    false
  end

  # returns true if all element of set are present in other in any order
  def eql?(other)
    return true if empty? && other.empty?
    return false if empty? || other.empty?
    return true if (set + other.set).uniq.size == set.uniq.size

    false
  end

  def add(element)
    set << element unless contains?(element)
    self
  end

  def ==(other)
    set == other.set
  end

  # return a CustomSet object containing the elements included both in other and set
  def intersection(other)
    new_set = CustomSet.new
    set.each do |element|
      new_set.add(element) if other.contains?(element)
    end
    new_set
  end

  def difference(other)
    new_set = CustomSet.new
    set.each do |element|
      new_set.add(element) unless other.contains?(element)
    end
    new_set
  end

  def union(other)
    CustomSet.new((set + other.set).uniq.sort)
  end
end
