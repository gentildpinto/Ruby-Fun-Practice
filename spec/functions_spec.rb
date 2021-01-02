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
end