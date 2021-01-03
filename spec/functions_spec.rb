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
end