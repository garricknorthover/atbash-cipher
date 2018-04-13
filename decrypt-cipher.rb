

class DecryptCipher
  CONSTANT = 'abcdefghijklmnopqrstuvwxyz'.split("")

  # Splits encrypted word into an array and then mapped over to find the value for the key
  # if character is in the constant

  def decrypt(word, cipher)
    word.split("").map { |x|
      CONSTANT.include?(x) ? array_to_hash(cipher)[x] : x
    }.join()
  end

  # Takes the constant and cipher and combines them to a hash with key value pairs
  def array_to_hash(cipher)
    Hash[cipher.zip(CONSTANT)]
  end
end

cipher = 'oephjizkxdawubnytvfglqsrcm'.split("")
ab = DecryptCipher.new
puts ab.decrypt('knlfgnb, sj koqj o yvnewju', cipher) # -> 'houston, we have a problem'

# TESTS!
# run -> rspec decrypt-cipher-tests.rb
#
#
# describe "test the  cipher" do
#   cipher = 'zodvqukgwefbyitmrsplhacxnj'
#   ab1 = DecryptCipher.new
#   it "car decrypted" do
#     expect(ab1.decrypt("dzs", cipher)).to eq 'car'
#   end
# end

# describe "2nd example" do
#   cipher = 'xipmuzfkbrlwotjancqgveshdy'
#   ab2 = DecryptCipher.new
#   it "decrypts with spaces and question mark" do
#     expect(ab2.decrypt("skd qj qucbjvq?", cipher)).to eq 'why so serious?'
#   end
# end

# describe "Challenge" do
#   cipher = 'oephjizkxdawubnytvfglqsrcm'
#   ab3 = DecryptCipher.new
#   it "decrypts with spaces and commas" do
#     expect(ab3.decrypt('knlfgnb, sj koqj o yvnewju', cipher)).to eq 'houston, we have a problem'
#   end
# end
