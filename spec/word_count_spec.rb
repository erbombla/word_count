require('rspec')
require('word_count')

describe ('String#word_count') do
  it ('will match one word in a one word string') do
    expect('dog'.word_count('dog')).to(eq(1))
  end
  it('will match one word in a multiple word string') do
   expect('cat'.word_count('the cat chased the mouse')).to(eq(1))
  end
  it('will count the number of occurances for a given word') do
    expect('fish'.word_count('one fish two fish red fish blue fish')).to(eq(4))
  end
  # it('will count a word when punctuation is included') do
  #   expect("evil".word_count("hear no evil, speak no evil, see no evil")).to(eq(3))
  # end
end
