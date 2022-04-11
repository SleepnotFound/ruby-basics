require './lib/cipher'

describe 'caesar_cipher' do 
  it "returns a cipher of a short string with short shift" do
    expect(caesar_cipher("hello", 4)).to eql("lipps")
  end

  it "returns a cipher of long shift" do
    expect(caesar_cipher("world", 50)).to eql("Bmfy f xywnsl!")
  end

  it "returns a cipher of string with capatalization" do
    expect(caesar_cipher("Wonderful", 7)).to eql("Dvuklymbs")
  end

  it "returns a cipher of multiple words" do
    expect(caesar_cipher("Never going to give you up", 15)).to eql("Ctktg vdxcv id vxkt ndj je")
  end

  it "returns a cipher with capatalization, multiple words and punctuation intact" do
    expect(caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
  end
  
  it "returns a cipher of large shift and string" do
    expect(caesar_cipher("This is a secret, please do not show it to anyone!", 45)).to eql("Xlmw mw e wigvix tpiewi hs rsx wlsa mx xs ercsri!")
  end
end