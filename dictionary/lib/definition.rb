class Definition
  @@definition = []

  define_method(:initialize) do |meaning|
    @meaning = meaning
  end

  define_method(:meaning) do
    @meaning
  end
end
