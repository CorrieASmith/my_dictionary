class Word

  @@word = []

  define_method(:initialize) do |word, language, root|

    @word = word
    @language = language
    @root = root
    @meaning = []
  end

  define_method(:word) do
    @word
  end

  define_method(:language) do
    @language
  end

  define_method(:root) do
    @root
  end
end
