#encoding=utf-8

def par_check(str)
  par_array = str.split('')
  count = 0
  par_array.each do |p|
    if p == "("
      count += 1
    elsif p == ")"
      count -= 1
    end

    if count < 0
      break
    end
  end

  if count == 0
    return true
  else
    return false
  end
end

while true
  print "please type some parentheses : "
  input = gets.chomp.to_s

  if par_check(input)
    puts "correct!"
  else
    puts "incorrect!"
  end
end
