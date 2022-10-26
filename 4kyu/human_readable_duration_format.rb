def format_duration(seconds)
  years = [seconds.to_i / 31536000, seconds.to_i % 31536000]
  days = [years[1] / 86400, years[1] % 86400]
  hours = [days[1] / 3600, days[1] % 3600]
  mins = [hours[1] / 60, hours[1] % 60]
  array = [pluralise(years[0], 'year'), pluralise(days[0], 'day'), pluralise(hours[0], 'hour'), pluralise(mins[0], 'minute'), pluralise(mins[1],'second')]
  display(array.select{|element| element!= 0})
end

def pluralise(num, format)
  if num == 0
    0
  elsif num == 1
    "1 #{format}"
  else
    "#{num} #{format}s"
  end
end

def display(array)
  if array.length == 0
    'now'
  elsif array.length == 1
    array[0]
  elsif array.length == 2
    array[0] + ' and ' + array[1]
  else
    array[0...array.length - 1].join(', ') + ' and ' + array.last
  end
end

p format_duration(1)
p format_duration(62)
p format_duration(120)
p format_duration(3600)
p format_duration(3662)
