def url?(str)
  !!str.match(/\A^https?:\/\/\S+$\z/)
end


p url?('http://launchschool.com')   # -> true
p url?('https://example.com')       # -> true
p url?('https://example.com hello') # -> false
p url?('   https://example.com')    # -> false