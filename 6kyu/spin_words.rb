def spin_words(string)
  #TODO
  string.gsub(/\w{5,}/, &:reverse)
end
