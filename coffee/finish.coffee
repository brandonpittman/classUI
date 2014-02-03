$ ->
  song = new Audio("snd/goodbye.wav")
  lines = ["Let's finish English!", "Goodbye!"]
  $('html').click ->
    if lines.length > 0 then $('.announce').text lines.shift() else song.play()