# frozen_string_literal: true

# Generate valid robot names
class Robot
  @@names = []

  def name
    return @name if @name
    @name = generate_name while @name.nil? || @@names.include?(@name)
    @@names << @name
    @name
  end

  def reset
    @@names.delete(name)
    @name = nil
  end

  private

  def generate_name
    ('A'..'Z').to_a.sample(2).join + ('1'..'9').to_a.sample(3).join
  end
end
