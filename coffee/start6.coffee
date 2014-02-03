months = ['January','February','March','April','May','June','July','August','September','October','November','December']

$ ->
  t = new Date()
  y = t.getFullYear()
  m = months[t.getMonth()]
  d = t.getDate()
  $('.date').text "Today is #{m} #{d}, #{y}."
  if new Date().getHours() < 12 then morning = true else morning = false
  lines = ["Let's study English!", if morning then "Good morning!" else "Good afternoon!"]
  song = if morning then new Audio("snd/goodMorningNeg.wav") else new Audio("snd/goodAfternoonNeg.wav")
  $('html').click ->
    if lines.length > 0 then $('.announce').text lines.shift() else song.play()