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
end