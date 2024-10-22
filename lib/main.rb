module Fibonacci
    def fibs(number)
        array_of_fibs = [0,1]

        if (1..2) === number
            return [0] if number == 1
            return [0,1] if number == 2
        end

        (number-2).times do
            array_of_fibs << array_of_fibs.last(2).sum
        end
        return array_of_fibs
    end

    def fibs_rec(number)

        if number == 3
            return [0,1,1]
        elsif number == 2
            return [0,1]
        elsif number == 1
            return [0]
        end

        fibs_rec(number-1) << fibs_rec(number-1).pop(2).sum
    end
end