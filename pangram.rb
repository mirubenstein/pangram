require 'set'

class Pangram
  def self.pangram?(phrase)
    Set.new('a'..'z').subset? phrase.downcase.split('').to_set
  end
end

module BookKeeping
  VERSION = 6
end
