# word-count: Count occurrence of words in a phrase

class Phrase

  attr_accessor :sentence

  def initialize(opts)
    @sentence = opts
  end

  def word_count
    { @sentence => @sentence.split.count }
  end

end
