#@codekit-prepend "jquery.js"

days = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday']
months = ['January','February','March','April','May','June','July','August','September','October','November','December']

$ ->
  t = new Date()
  day = t.getDay()
  y = t.getFullYear()
  m = months[t.getMonth()]
  d = t.getDate()
  $('.date').text "#{days[day]}, #{m} #{d}, #{y}"