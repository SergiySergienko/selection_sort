def draw_line(start_x, start_y, end_x, end_y, color='white')
    Line.new(
        x1: start_x, y1: start_y,
        x2: end_x, y2: end_y,
        width: 1,
        color: color,
        z: 20
    )
end

def draw_values(values)
    current_x = 0
    values.each do |value|
        draw_line(current_x, 0, current_x, value)
        current_x+=1
    end
end

def draw_operations_count(operations_count)
    y_pos = get(:height) - 20
    Text.new(
    "Operations count: #{operations_count}",
    x: 10, y: y_pos,
    size: 10,
    color: 'red',
    z: 10
    )
end