def two_letter_day(x)
  get_input
  @year = yearShifted(@yearOne, @month)

  days = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa']
  @day = days[(x+(2.6*(shiftedMonth(@month))-0.2).floor-(2*sliceBeginYear(@year))+sliceEndYear(@year)+(sliceEndYear(@year)/4)+(sliceBeginYear(@year)/4)+2)%7]
  print_day
end

def get_input
  puts 'Enter a year then a month of that year.'
  puts ' '
  puts ' '
  prompt = '==>'
  puts 'year? (4 digit year)'
  print prompt
  @yearOne = STDIN.gets.chomp().to_i
  puts 'month? (1-12)'
  print prompt
  @month = STDIN.gets.chomp().to_i
end

def shiftedMonth(m)
  if m >=3
    (m-2)
  else
    m+10
  end
end

def yearShifted(y, m)
  if m == 1 || m == 2
    y-=1
  else
    y
  end
end

def sliceEndYear(y)
  y.to_s[2..4].to_i
end

def sliceBeginYear(y)
  y.to_s[0..2].to_i
end

def print_day
  puts "The day of the week is #{@day}"
end

two_letter_day(5)

two_letter_day(15)
