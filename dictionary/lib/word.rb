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
end
