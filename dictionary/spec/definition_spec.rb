require('rspec')
require('definition')
require('word')

describe('Definition') do

  describe('#meaning') do
    it("returns the meaning of the word") do
      test_definition = Definition.new("not able to be corrected", "habitiual", "repentant")
      expect(test_definition.meaning()).to(eq("not able to be corrected"))
    end
  end

  describe('#synonym') do
    it("returns a synonym of the word") do
      test_definition = Definition.new("not able to be corrected", "habitual", "repentant")
      expect(test_definition.synonym()).to(eq("habitual"))
    end
  end

  describe('#antonym') do
    it("returns an antonym of the word") do
      test_definition = Definition.new("not able to be corrected", "habitiual", "repentant")
      expect(test_definition.antonym()).to(eq("repentant"))
    end
  end
end
