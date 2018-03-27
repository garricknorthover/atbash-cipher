
CONSTANT = 'abcdefghijklmnopqrstuvwxyz'

# Splits encrypted word into an array and then mapped over to find the value for the key
# if character is in the constant

def decrypt(word, cipher)
  word.split("").map { |x|
    CONSTANT.include?(x) ? array_to_hash(cipher)[x] : x
  }.join()
end

# Takes the constant and cipher and combines them to a hash with key value pairs
def array_to_hash(cipher)
  Hash[cipher.split("").zip(CONSTANT.split(""))]
end

cipher = 'oephjizkxdawubnytvfglqsrcm'
puts decrypt('knlfgnb, sj koqj o yvnewju', cipher) # -> 'houston, we have a problem'

# TESTS!

# describe "test the  cipher" do
#   cipher = 'zodvqukgwefbyitmrsplhacxnj'
#   it "car decrypted" do
#     expect(decrypt("dzs", cipher)).to eq 'car'
#   end
# end

# describe "2nd example" do
#   cipher = 'xipmuzfkbrlwotjancqgveshdy'
#   it "2nd example decrypted" do
#     expect(decrypt("skd qj qucbjvq?", cipher)).to eq 'why so serious?'
#   end
# end



