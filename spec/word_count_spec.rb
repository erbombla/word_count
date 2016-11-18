require('rspec')
require('word_count')

describe ('String#word_count') do
  it('will count the number of occurances for a given word') do
    expect('fish'.word_count('one fish two fish red fish blue fish')).to(eq(4))
  end
end
