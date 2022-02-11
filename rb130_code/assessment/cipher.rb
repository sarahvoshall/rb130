class Cipher
  AM = ('a'..'m').to_a
  ZN = ('n'..'z').to_a.reverse
  
  class << self
    def encode(string)
      string = format_input(string)
      array = choose_chars(string)
      format_output(array)
    end

    def format_input(string)
      string.downcase.gsub(/[^a-z1-9]/, '')
    end

    def choose_chars(string)
      string.chars.map do |char|
        if char.match(/\d/)
          char
        elsif AM.include?(char)
          ZN[AM.index(char)]
        else
          AM[ZN.index(char)]
        end
      end
    end

    def format_output(array)
      array.join.scan(/(.{5}|.{1,})/).join(' ')
    end
  end
end
