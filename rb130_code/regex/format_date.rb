# def format_date(str)
#   if str.match(/\-/)
#     str.split(/\-/).reverse.join('.')
#   else
#     str
#   end
# end

# def format_date(str)
#   str.split(/\-/).reverse.join('.')
# end

def format_date(str)
  str.sub(/(\A\d\d\d\d)-(\d\d)-(\d\d)\z/, '\3.\2.\1')
     .sub(/(\A\d\d\d\d)\/(\d\d)\/(\d\d)\z/, '\3.\2.\1')
end

# p format_date('2016-06-17') # -> '17.06.2016'
# p format_date('2016/06/17') # -> '2016/06/17' (no change)
p format_date('2016-06-17') # -> '17.06.2016'
p format_date('2017/05/03') # -> '03.05.2017'
p format_date('2015/01-31') # -> '2015/01-31' (no change)