require File.dirname(__FILE__) + '/../lib/solutions.rb'

RSpec.describe "Solutions" do
    let(:solution) { Functions }

    describe "identity()" do
        it "takes an argument and returns that argument" do
            expect(solution.identity(3)).to eq(3) 
        end
    end
end