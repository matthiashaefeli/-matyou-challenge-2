require './src/challenge.rb'

describe 'test' do 
  it 'returns a given string' do 
    expect(test('Hello World')).to eq 'Hello World'
  end
end

describe 'nearby' do
  it 'takes a string in and returns true if the letter z appears within three letters **after** an a' do 
    expect(nearby('baz')).to eq true
  end

  it 'takes a string in and returns true if the letter z appears within three letters **after** an a' do 
    expect(nearby('babz')).to eq true
  end

  it 'takes a string in and returns true if the letter z appears within three letters **after** an a' do
    expect(nearby('babbz')).to eq true
  end

  it 'takes a string in and returns false if the letter z not appears within three letters **after** an a' do
    expect(nearby('bbba')).to eq false
  end

  it 'takes a string in and returns false if the letter z not appears within three letters **after** an a' do 
    expect(nearby('z')).to eq false
  end
end

describe 'power of two' do 
  it 'takes in a number and returns true if it is a power of 2' do 
    expect(power_of_two(1)).to eq true
  end

  it 'takes in a number and returns true if it is a power of 2' do 
    expect(power_of_two(64)).to eq true
  end

  it 'takes in a number and returns false if it is not a power of 2' do 
    expect(power_of_two(78)).to eq false
  end

  it 'takes in a number and returns false if it is not a power of 2' do 
    expect(power_of_two(0)).to eq false
  end
end

describe 'most common letter' do 
  it 'return the most common letter in the array, and a count of how many times it appears.' do
    expect(most_common_letter('abca')).to eq ['a', 2]
  end

  it 'return the most common letter in the array, and a count of how many times it appears.' do 
    expect(most_common_letter('abcrbasub')).to eq ['b', 3]
  end
end

describe 'capitalize words' do 
  it 'capitalizes the first letter of each word.' do 
    expect(capitalize_words('hello world')).to eq 'Hello World'
  end

  it 'capitalizes the first letter of each word.' do 
    expect(capitalize_words('this is a long sentence')).to eq 'This Is A Long Sentence' 
  end
end

describe 'scramble string' do 
  it 'produce a new string, which contains letters from the input
      string in the order specified by the indices of the array of indices.' do 
    expect(scramble_string("abcd", [3, 1, 2, 0])).to eq "dbca"
  end

  it 'produce a new string, which contains letters from the input
      string in the order specified by the indices of the array of indices.' do 
    expect(scramble_string("markov", [5, 3, 1, 4, 2, 0])).to eq "vkaorm"
  end
end

describe 'prime' do
  it 'return true if its a prime' do 
    expect(prime(2)).to eq true
  end

  it 'return true if its a prime' do 
    expect(prime(3)).to eq true
  end

  it 'return false if its not a prime' do 
    expect(prime(4)).to eq false
  end

  it 'return false if its not a prime' do 
    expect(prime(9)).to eq false
  end
end

describe 'palindrome' do 
  it "Find the longest such string of letters that is a palindrome" do 
    expect(longest_palindrome("abcbd")).to eq "bcb"
  end

  it "Find the longest such string of letters that is a palindrome" do 
    expect(longest_palindrome("abba")).to eq "abba"
  end

  it "Find the longest such string of letters that is a palindrome" do 
    expect(longest_palindrome("abcbdeffe")).to eq "effe"
  end
end

describe "greates common factor" do 
  it "Return the greatest integer that evenly divides both numbers" do 
    expect(greatest_common_factor(3, 9)).to eq 3
  end

  it "Return the greatest integer that evenly divides both numbers" do 
    expect(greatest_common_factor(16, 24)).to eq 8
  end

  it "Return the greatest integer that evenly divides both numbers" do 
    expect(greatest_common_factor(3, 5)).to eq 1
  end
end

describe "caesar cipher" do 
  it "takes a string and a number. the number is the next letter in order from alphabet
      after z starts with a again" do 
    expect(caesar_cipher(3, "abc")).to eq "def"
  end

  it "takes a string and a number. the number is the next letter in order from alphabet
      after z starts with a again" do 
    expect(caesar_cipher(5, "abc")).to eq "fgh"
  end

  it "takes a string and a number. the number is the next letter in order from alphabet
      after z starts with a again" do 
    expect(caesar_cipher(2, "aabz")).to eq "ccdb"
  end
end

describe "number repeats" do 
  it "returns the number of letters that appear more than once in the string" do 
    expect(num_repeats("abdbc")).to eq 1
  end

  it "returns the number of letters that appear more than once in the string" do 
    expect(num_repeats("aaa")).to eq 1
  end

  it "returns the number of letters that appear more than once in the string" do 
    expect(num_repeats("abab")).to eq 2
  end

  it "returns the number of letters that appear more than once in the string" do 
    expect(num_repeats("cadac")).to eq 2
  end

  it "returns the number of letters that appear more than once in the string" do 
    expect(num_repeats("abcde")).to eq 0
  end
end

