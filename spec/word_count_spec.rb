require('rspec')
require('word_count')

describe ('String#word_count') do
  it ('will match one word in a one word string') do
    expect('dog'.word_count('dog')).to(eq(1))
  end
  it('will match one word in a multiple word string') do
   expect('cat'.word_count('the cat chased the mouse')).to(eq(1))
  end
  it('will match one word in a multiple word string using mixed case ') do
    expect('banana'.word_count('The Monkey ate a Banana and Felt Happy')).to(eq(1))
  end
  it('will count the number of occurances for a given word') do
    expect('fish'.word_count('One Fish Two Fish Red Fish Blue Fish')).to(eq(4))
  end
end
