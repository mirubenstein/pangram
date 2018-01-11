require 'set'

module Italian
  ALPHABET = %w[A B C D E F G H I L M N O P Q R S T U V Z].freeze
end

module Latin
  ALPHABET = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z].freeze
end

class Pangram
  def self.pangram?(phrase, language = Latin)
    Set.new(language::ALPHABET).subset? phrase.upcase.chars.to_set
  end
end

module BookKeeping
  VERSION = 6
end
