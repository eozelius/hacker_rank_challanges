=begin
  Example of Data Structure
    [
#   ["d", "b", "c"],
#   ["a", "c", "a"],
#   ["b", "a", "t"]
# ]

# Set of valid words:
# "cab",
# "cat",
# "bat",  


  Test Cases

  Specs

  Public Interface
  

  def method(...)
    variables
    n/a
  
    psuedocode
      Make a copy?
    return
  end
=end

class Boggle
  attr_reader :board, :dictionary, :first_chars
  
  def initialize
  end
  
  def play(board = [[]], dictionary = [])
    @board = board
    @dictionary = dictionary
    @first_chars = []
    @dictionary.each do |w|
      @first_chars.push(w[0])
    end
    
    @dictionary.each do |word|
      p "word: #{word}"
      
      word.each_char do |char|
        if find_letter(char) 
          # North 
          if 
          
          
          # East
          
          
          
          
          # South
          

            
          
          # West        
        end
      end    
    end
  end
    
  def find_letter(char)
    rows = @board.length - 1
    cols = @board[0].length - 1
    
    (0..rows).each do |r|
      (0..cols).each do |c|
        letter = @board[r][c]
        return true if letter == char
      end
    end
    return false
  end
  
  def first_letter_match(char)
    @first_chars.each do |c|
      if c == char
        return true
      end
    end
    return false
  end
    
    
  # def dict_lookup(char)
    
  
  # end
end



board = [
   ["d", "b", "c"],
   ["a", "c", "a"],
   ["b", "a", "t"]
]
dictionary = ['cab', 'cat', 'bat']
b = Boggle.new
b.play(board, dictionary)


# * Create an application that **prints** all the words in a Boggle board represented by a 2D matrix.
# * Input: Board represented as 2D matrix.
# * Input: Set of valid words.
# * Output: Words contained in the boggle board.
# * Notes:
#   * Can’t re-use the same letter for a given word.
#   * Letters can’t be connected diagonally.
#
# Example:
# Board:
# [
#   ["d", "b", "c"],
#   ["a", "c", "a"],
#   ["b", "a", "t"]
# ]

# Set of valid words:
# "cab",
# "cat",
# "bat",