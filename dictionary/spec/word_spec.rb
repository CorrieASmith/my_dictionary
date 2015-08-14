require('rspec')
require('word')
require('definition')

describe(Word) do
  before() do
    Word.clear()
  end

  describe('#word') do
    it("receives user input and returns one word") do
      test_word = Word.new("incorrigible", "english", "latin")
      expect(test_word.word()).to(eq("incorrigible"))
    end
  end

  describe('#language') do
    it("returns the language of the word") do
      test_word = Word.new("incorrigible", "english", "latin")
      expect(test_word.language()).to(eq("english"))
    end
  end

  describe('#root') do
    it("returns the root of the word") do
      test_word = Word.new("incorrigible", "english", "latin")
      expect(test_word.root()).to(eq("latin"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a new word to the list of saved words") do
      test_word = Word.new("incorrigible", "english", "latin")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved words") do
      Word.new("incorrigible", "english", "latin")
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end
end
