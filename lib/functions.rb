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

    # this function is generalized for any amount of arguments
    def self.mul(*nums)
        product = nums.reduce(&:*)
        return product
    end

    # this function is generalized for any amount of arguments
    def self.min(*nums)
        min ||= nums[0]
        nums.each do |value|
            min = value if value < min
        end
        return min
    end

    # this function is generalized for any amount of arguments
    def self.max(*nums)
        max ||= nums[0]
        nums.each do |value|
            max = value if value > max
        end
        return max
    end

    # this function is the generalized `add` function but uses recursion
    def self.addRecurse(*nums)
        return nums[0] if nums.length == 1
        sum = nums.pop
        return sum + addRecurse(*nums)
    end

    # this function is the generalized `mul` function but uses recursion
    def self.mulRecurse(*nums)
        return nums[0] if nums.length == 1
        product = nums.pop
        return product * mulRecurse(*nums)
    end

    # this function is the generalized `min` function but uses recursion
    def self.minRecurse(*nums)
        return nums[0] if nums.length == 1
        if nums[0] < nums[-1]
            nums.pop
        else
            nums.shift
        end
        return minRecurse(*nums)
    end
end