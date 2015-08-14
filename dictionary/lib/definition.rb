class Definition
  @@definition = []

  define_method(:initialize) do |meaning, synonym, antonym|
    @meaning = meaning
    @synonym = synonym
    @antonym = antonym
  end

  define_method(:meaning) do
    @meaning
  end

  define_method(:synonym) do
    @synonym
  end

  define_method(:antonym) do
    @antonym
  end

  define_singleton_method(:all) do
    @@definition
  end

  define_method(:save) do
    @@definition.push(self)
  end

  define_singleton_method(:clear) do
    @@definition = []
  end

  define_singleton_method(:find) do |synonym|
    find_definition = nil
    @@definition.each() do |definition|
      if definition.synonym().eql?(synonym)
        find_definition = definition
      end
    end
    find_definition
  end
end
