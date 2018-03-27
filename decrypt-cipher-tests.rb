require_relative 'decrypt-cipher'

describe "test the  cipher" do
  cipher = 'zodvqukgwefbyitmrsplhacxnj'
  ab1 = DecryptCipher.new
  it "car decrypted" do
    expect(ab1.decrypt("dzs", cipher)).to eq 'car'
  end
end

describe "2nd example" do
  cipher = 'xipmuzfkbrlwotjancqgveshdy'
  ab2 = DecryptCipher.new
  it "decrypts with spaces and question mark" do
    expect(ab2.decrypt("skd qj qucbjvq?", cipher)).to eq 'why so serious?'
  end
end

describe "Challenge" do
cipher = 'oephjizkxdawubnytvfglqsrcm'
ab3 = DecryptCipher.new
  it "decrypts with spaces and commas" do
    expect(ab3.decrypt('knlfgnb, sj koqj o yvnewju', cipher)).to eq 'houston, we have a problem'
  end
end

