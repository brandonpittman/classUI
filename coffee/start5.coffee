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
  if new Date().getHours() < 12 then morning = true else morning = false
  lines = ["Let's study English!", if morning then "Good morning!" else "Good afternoon!"]
  song = if morning then new Audio("snd/goodMorning.mp3") else new Audio("snd/goodAfternoon.mp3")
  $('html').click ->
    if lines.length > 0 then $('.announce').text lines.shift() else song.play()