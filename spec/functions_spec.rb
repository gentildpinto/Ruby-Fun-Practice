require File.dirname(__FILE__) + '/../lib/functions.rb'

RSpec.describe "Functions" do

  describe "identity(argument)" do
    it "takes an argument and returns that argument" do
      expect(identity(3)).to eq(3)
    end
  end

  describe "addb(a, b)" do
    it "takes two numbers and returns their sum" do
      expect(addb(3, 4)).to eq(7)
    end
  end

  describe "subb(a, b)" do
    it "takes two numbers and returns their difference" do
      expect(subb(3, 4)).to eq(-1)
    end        
  end

  describe "mulb(a, b)" do
    it "takes two numbers and returns their product" do
      expect(mulb(3, 4)).to eq(12)
    end
  end

  describe "minb(a, b)" do
   it "takes two numbers and returns the smaller one" do
      expect(minb(3, 4)).to eq(3)
   end 
  end

  describe "maxb(a, b)" do
    it "takes two numbers and returns the larger one" do
      expect(maxb(3, 4)).to eq(4)
    end
  end

  describe "add(*nums)" do
    it "is generalized for any amount of arguments" do
      expect(add(1, 2, 4)).to eq(7)
    end
  end

  describe "sub(*nums)" do
    it "is generalized for any amount of arguments" do
      expect(sub(1, 2, 4)).to eq(-5)
    end
  end

  describe "mul(*nums)" do
    it "is generalized for any amount of arguments" do
      expect(mul(1, 2, 4)).to eq(8)
    end
  end

  describe "min(*nums)" do
    it "is generalized for any amount of arguments" do
      expect(min(1, 2, 4)).to eq(1)
    end
  end

  describe "max(*nums)" do
    it "is generalized for any amount of arguments" do
      expect(max(1, 2, 4)).to eq(4)
    end
  end

  describe "addRecurse(*nums)" do
    it "is the generalized `add` function but uses recursion" do
      expect(addRecurse(1, 2, 4)).to eq(7)
    end
  end

  describe "mulRecurse(*nums)" do
    it "is the generalized `mul` function but uses recursion" do
      expect(mulRecurse(1, 2, 4)).to eq(8)
    end
  end

  describe "minRecurse(*nums)" do
    it "is the generalized `min` function but uses recursion" do
      expect(minRecurse(1, 2, 4)).to eq(1)
    end
  end

  describe "maxRecurse(*nums)" do
    it "is the generalized `max` function but uses recursion" do
      expect(maxRecurse(1, 2, 4)).to eq(4)
    end
  end

  describe "not(function)" do
    it "takes a function and returns the negation of its result" do
      isOdd = -> (value) { value % 2 == 1}
      expect(not(isOdd.(1))).to eq(false)
    end
  end
end