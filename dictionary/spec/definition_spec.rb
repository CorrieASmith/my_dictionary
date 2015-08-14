require('rspec')
require('definition')
require('word')

describe(Definition) do
  before() do
    Definition.clear()
  end

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
      test_definition = Definition.new("not able to be corrected", "habitual", "repentant")
      expect(test_definition.antonym()).to(eq("repentant"))
    end
  end

  describe('.all') do
    it("is empty at first") do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("adds a definition to the array of words") do
      test_definition = Definition.new("not able to be corrected", "habitual", "repentant")
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end

  describe('.clear') do
    it("empties out all of the saved definitions") do
      Definition.new("not able to be corrected", "habitual", "repentant")
      Definition.clear()
      expect(Definition.all()).to(eq([]))
    end
  end
end
