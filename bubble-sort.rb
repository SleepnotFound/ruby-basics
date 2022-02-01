def bubble_sort(arr)
    i = 0
    sets = arr.length - 1
    while sets > 0 
        if arr[i] > arr[i+1]
            arr[i],arr[i+1] = arr[i+1],arr[i]
        end
        i += 1
        if i == sets
            sets -= 1
            i = 0
        end
    end
    p arr
end
bubble_sort([4,3,78,2,0,2])