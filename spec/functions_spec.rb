require File.dirname(__FILE__) + '/../lib/functions.rb'

RSpec.describe "Functions" do
    let(:functions) { Functions }

    describe "identity(argument)" do
        it "takes an argument and returns that argument" do
            expect(functions.identity(3)).to eq(3)
        end
    end

    describe "addb(a, b)" do
        it "takes two numbers and returns their sum" do
            expect(functions.addb(3, 4)).to eq(7)
        end
    end

    describe "subb(a, b)" do
        it "takes two numbers and returns their difference" do
            expect(functions.subb(3, 4)).to eq(-1)
        end        
    end

    describe "mulb(a, b)" do
        it "takes two numbers and returns their product" do
            expect(functions.mulb(3, 4)).to eq(12)
        end
    end

    describe "minb(a, b)" do
       it "takes two numbers and returns the smaller one" do
           expect(functions.minb(3, 4)).to eq(3)
       end 
    end

    describe "maxb(a, b)" do
        it "takes two numbers and returns the larger one" do
            expect(functions.maxb(3, 4)).to eq(4)
        end
    end

    describe "add(*nums)" do
        it "is generalized for any amount of arguments" do
            expect(functions.add(1, 2, 4)).to eq(7)
        end
    end

    describe "sub(*nums)" do
        it "is generalized for any amount of arguments" do
            expect(functions.sub(1, 2, 4)).to eq(-5)
        end
    end

    describe "mul(*nums)" do
        it "is generalized for any amount of arguments" do
            expect(functions.mul(1, 2, 4)).to eq(8)
        end
    end

    describe "min(*nums)" do
        it "is generalized for any amount of arguments" do
            expect(functions.min(1, 2, 4)).to eq(1)
        end
    end

    describe "max(*nums)" do
        it "is generalized for any amount of arguments" do
            expect(functions.max(1, 2, 4)).to eq(4)
        end
    end

    describe "addRecurse(*nums)" do
        it "is the generalized `add` function but uses recursion" do
            expect(functions.addRecurse(1, 2, 4)).to eq(7)
        end
    end

    describe "mulRecurse(*nums)" do
        it "is the generalized `mul` function but uses recursion" do
            expect(functions.mulRecurse(1, 2, 4)).to eq(8)
        end
    end
end