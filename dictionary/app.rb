require('sinatra')
require('sinatra/reloader')
require('./lib/word')
require('./lib/definition')

also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/new_word') do
  erb(:new_word)
end

get('/') do
  @word = Word.all()
  @definition = Definition.all()
  erb(:new_word)
end

get('/word_info') do
  erb(:word_info)
end

post('/') do
  word = params.fetch('word')
  language = params.fetch('language')
  root = params.fetch('root')
  Word.new(word, language, root).save()
  @word = Word.all()
  erb(:success)
end

get('/') do
  meaning = params.fetch('meaning')
  synonym = params.fetch('synonym')
  antonym = params.fetch('antonym')
  Definition.new(meaning, synonym, antonym)
  @definition = Definition.all()
  erb(:success)
end

get('/word_info/:meaning') do
  @word = Word.find(params.fetch('meaning'))
  erb(:my_word)
end
