require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @input_phrase = params.fetch('input_phrase')
  @input_word = params.fetch('input_word')
  @output = (@input_word).word_count(@input_phrase)
  if (@output == 1)
    @times = 'time.'
  else
    @times = 'times.'
  end
  erb(:index)
end
