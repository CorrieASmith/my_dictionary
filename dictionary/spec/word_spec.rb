require('rspec')
require('word')
require('definition')

describe(Word) do
  # before() do
  #   Word.clear()

  describe('#word') do
    it("receives user input and returns one word") do
      test_word = Word.new("incorrigible", "english", "latin")
      expect(test_word.word()).to(eq("incorrigible"))
    end
  end
end
