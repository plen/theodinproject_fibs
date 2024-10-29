module Merger
    def merge_sort(array)
        if array.length == 2
            a = [array[0]]
            b = [array[-1]]
        elsif array.length == 1
            return array
        else
            a = merge_sort(array.slice!(0,array.length/2))
            b = merge_sort(array)
        end

        merge(a,b)
    end

    def merge(a,b)
        returning_array = []

        until a.empty? || b.empty?
            a.first <= b.first ? returning_array << a.shift : returning_array << b.shift
        end

        return returning_array.concat(a).concat(b)
    end
end