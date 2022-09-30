# description:You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
  # your code here

  middle = s.length / 2.floor
  s.length.even? ? s[middle - 1, 2] : s[(middle)]
end
