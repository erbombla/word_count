require('rspec')
require('word_count')
require('pry')

describe ('String#word_count') do
  it('will count the number of strings in a sentence') do
    expect('one fish two fish red fish blue fish'.word_count()).to(eq(8))
  end
end
