#encoding=utf-8

def draw(num)
  draw_arrays = Array.new
  while draw_arrays.size < num
    draw_arrays << (1..45).to_a.sample(6).sort
  end
    draw_arrays.uniq!

  return draw_arrays
end

def lot(win_array, num)
  draw_result = draw(num)
  draw_result.each do |array|
    if array == win_array.sort
      puts "congraturations!"
    elsif (win_array & array).size == 5
      puts "2nd Prize!"
    end
  end
end

print "input 1st prize lotto number : "
input = gets.chomp
array = input.split(' ').map{|value| value.to_i}
puts array.inspect
lot(array,100000)
