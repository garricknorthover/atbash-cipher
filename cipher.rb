
CONSTANT = 'abcdefghijklmnopqrstuvwxyz'

def decrypt(word, cipher)
  result = Hash[cipher.split("").zip(CONSTANT.split(""))]
  word.split("").map { |x| result[x] }.join()
end

cipher = 'zodvqukgwefbyitmrsplhacxnj'
puts decrypt('dzs', cipher)
#just one test so far



# describe "test the  cipher" do
#   cipher = 'zodvqukgwefbyitmrsplhacxnj'
#   it "car decrypted" do
#     expect(decrypt("car", cipher)).to eq 'dzs'
#   end
# end

# note to remember Any character other than what you have in the constant doesn't have to be replaced.
