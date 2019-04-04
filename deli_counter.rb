katz_deli = []

def line(katz_deli)
  if katz_deli.length == 0
    return "The line is currently empty."
  else
    formatted_line = []
    counter = 1
    katz_deli.each do |i|
      formatted_line.push("#{counter}. #{i}")
      counter += 1
    end
  end
  real_line = formatted_line.join(" ")
  return "The line is currently: #{real_line}"
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    first = katz_deli.shift
    puts "Currently serving #{first}."
  end
end