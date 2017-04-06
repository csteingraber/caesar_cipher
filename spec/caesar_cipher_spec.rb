require "caesar_cipher"

describe "caesar_cipher" do
  context "wih arguments 'a' and 3" do
    it "returns 'd'" do
      expect(caesar_cipher("a", 3)).to eql("d")
    end
  end

  context "with arguments 'A' and 3" do
    it "returns 'D'" do
      expect(caesar_cipher("A", 3)).to eql("D")
    end
  end

  context "with arguments 'Shift me' and 7" do
    it "returns 'Zopma tl'" do
      expect(caesar_cipher("Shift me", 7)).to eql("Zopma tl")
    end
  end

  context "with arguments 'Shift, me, please!' and 7" do
    it "returns 'Zopma, tl, wslhzl!'" do
      expect(caesar_cipher("Shift, me, please!", 7)).to eql("Zopma, tl, wslhzl!")
    end
  end
end