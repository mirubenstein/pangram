require 'set'

class Pangram
  def pangram?(phrase)
    Set.new(alphabet).subset? phrase.upcase.chars.to_set
  end
end

class Italian < Pangram
  def alphabet
    %w[A B C D E F G H I L M N O P Q R S T U V Z].freeze
  end
end

class Latin < Pangram
  def alphabet
    %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z].freeze
  end
end

Latin.new.pangram?('the quick brown fox jumps over the lazy dog')
Italian.new.pangram?('Quel fez sghembo copre davanti')

module BookKeeping
  VERSION = 6
end
