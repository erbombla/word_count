require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @phrase = params.fetch('phrase')
  @word = params.fetch('word')
  @output = (@word).word_count(@phrase)
  if (@output == 1)
    @times = 'time'
  else
    @times = 'times'
  end
  erb(:index)
end
