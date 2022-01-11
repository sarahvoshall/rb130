=begin
Write a method that iterates through a string and replaces each char 
with the char 13 chars after it 

If alphabet placement is less than or equal to 13, replace with 
char + 13
If alphabet placement is greater than 13, replace with char minus 13
=end
# ALPHA = ('a'..'z').to_a

# def decrypt(str)
#   str.downcase!
#   str.chars.map do |char| 
#     pos = char.ord - 97
#     if pos <= 12
#       ALPHA[pos + 13]
#     elsif pos > 12
#       ALPHA[pos - 13]
#     elsif char.ord == 32
#       char
#     end
#   end.join
# end

# knowing that you can go from an ordinal number to the char with #chr

def decrypt(string)
  string.chars.map do |char| 
    case char
    when 'a'..'m', 'A'..'M' then (char.ord + 13).chr
    when 'l'..'z', 'L'..'Z' then (char.ord - 13).chr
    else                         char 
    end
  end.join
end

p decrypt("Nqn Ybirynpr")
p decrypt("Tenpr Ubccre")
p decrypt("Nqryr Tbyqfgvar")
p decrypt("Nyna Ghevat")
p decrypt("Puneyrf Onoontr")
p decrypt("Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv")
# p decrypt(Wbua Ngnanfbss)
# p decrypt(Ybvf Unvog)
# p decrypt(Pynhqr Funaaba)
# p decrypt(Fgrir Wbof)
# p decrypt(Ovyy Tngrf)
# p decrypt(Gvz Orearef-Yrr)
# p decrypt(Fgrir Jbmavnx)
# p decrypt(Xbaenq Mhfr)
# p decrypt(Fve Nagbal Ubner)
# p decrypt(Zneiva Zvafxl)
# p decrypt(Lhxvuveb Zngfhzbgb)
# p decrypt(Unllvz Fybavzfxv)
# p decrypt(Tregehqr Oynapu)
