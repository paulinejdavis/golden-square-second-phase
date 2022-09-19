class GrammarStats
  def initialize
    @text_check = 0
    @text_passed = 0
  end
  
  def check(text) # text is a string
    @text_check += 1
    fail "Text is empty,try again" if text.empty?
    punctuation = [".", "!", "?"]
    result = (text[0] == text[0].upcase && punctuation.include?(text[-1]))
    @text_passed += 1 if result == true
    result
  end
  
  def percentage_good
    fail "No text to check" if @text_check == 0
    (@text_passed /@text_check.to_f * 100).ceil
  end
end