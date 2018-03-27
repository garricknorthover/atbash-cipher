
CONSTANT = 'abcdefghijklmnopqrstuvwxyz'

# Splits encrypted word into an array and then mapped over to find the value for the key
def decrypt(word, cipher)
  word.split("").map { |x| array_to_hash(cipher)[x] }.join()
end

# Takes the 2 arrays and combines them ta hash with key value pairs
def array_to_hash(cipher)
  Hash[cipher.split("").zip(CONSTANT.split(""))]
end

cipher = 'zodvqukgwefbyitmrsplhacxnj'
puts decrypt('dzs', cipher)

# TESTS!

describe "test the  cipher" do
  cipher = 'zodvqukgwefbyitmrsplhacxnj'
  it "car decrypted" do
    expect(decrypt("dzs", cipher)).to eq 'car'
  end
end

describe "2nd example" do
  cipher = 'xipmuzfkbrlwotjancqgveshdy'
  it "2nd example decrypted" do
    expect(decrypt("skd qj qucbjvq?", cipher)).to eq 'why so serious?'
  end
end

# note to remember Any character other than what you have in the constant doesn't have to be replaced.
