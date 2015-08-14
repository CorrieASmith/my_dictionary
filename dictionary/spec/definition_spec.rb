require('rspec')
require('definition')
require('word')

describe('Definition') do

  describe('#meaning') do
    it("returns the meaning of the word") do
      test_definition = Definition.new("not able to be corrected")
      expect(test_definition.meaning()).to(eq("not able to be corrected"))
    end
  end
end
