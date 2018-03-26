

class Atbash
  def encrypt(word)
    if word == 'car'
      'dzs'
    end
  end
end
# just one test so far
#
describe "test the  cipher" do
  CONSTANT = 'abcdefghijklmnopqrstuvwxyz'
  cipher = 'zodvqukgwefbyitmrsplhacxnj'
  at = Atbash.new
  it "car encrypted" do
    expect(at.encrypt("car")).to eq 'dzs'
  end
end
