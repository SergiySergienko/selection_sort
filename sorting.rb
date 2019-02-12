def do_sort(values, current_index)
    operation_count = 0
    old_index = current_index
    values.each_with_index do |value, index|
        current_index = index if value > values[current_index]
        if current_index != old_index
            values = swap(values, old_index, current_index)
            operation_count += 1
        end
    end
    
    [values, operation_count]
end

def swap(values, start_index, dest_index)
    temp = values[start_index]
    values[start_index] = values[dest_index]
    values[dest_index] = temp
    values
end
