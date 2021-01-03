module Functions
    # this function takes an argument and returns that argument
    def self.identity(argument)
        return argument
    end

    # this function takes two numbers and returns their sum
    def self.addb(a, b)
        return a + b
    end

    # this function takes two numbers and returns their difference
    def self.subb(a, b)
        return a - b
    end

    # this function takes two numbers and returns their product
    def self.mulb(a, b)
        return a * b
    end

    # this function takes two numbers and returns the smaller one
    def self.minb(a, b)
        return a < b ? a : b
    end

    # this function takes two numbers and returns the larger one
    def self.maxb(a, b)
        return a > b ? a : b
    end

    # this function is generalized for any amount of arguments
    def self.add(*nums)
        sum = nums.reduce(&:+)
        return sum
    end

    # this function is generalized for any amount of arguments
    def self.sub(*nums)
        diff = nums.reduce(&:-)
        return diff
    end
end