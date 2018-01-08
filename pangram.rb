require 'set'

class Pangram
  LATIN_ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z].freeze

  def self.pangram?(phrase)
    Set.new(LATIN_ALPHABET).subset? phrase.upcase.chars.to_set
  end
end

module BookKeeping
  VERSION = 6
end
