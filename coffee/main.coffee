months = ['January','February','March','April','May','June','July','August','September','October','November','December']
$ ->
  t = new Date()
  y = t.getFullYear()
  m = months[t.getMonth()]
  d = t.getDate()
  $('.date').text "Today is #{m} #{d}, #{y}."