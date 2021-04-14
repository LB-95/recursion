def merge_sort(arr)

    if arr.length > 1
        left = merge_sort(arr[0...arr.length/2])
        right = merge_sort(arr[arr.length/2...arr.length])

        sorted_array =[]

        while left.length > 0 && right.length > 0
            if left[0] < right[0]
                sorted_array << left.shift
            else 
                sorted_array << right.shift
            end
        end
        if left.empty?
            right.each { |n| sorted_array << n}
        else
            left.each { |n| sorted_array << n}
        end
        return sorted_array
    else
        return arr

    end
end

arr = [2, 3, 5, 6, 7, 22]

p merge_sort(arr)