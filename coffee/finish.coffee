#@codekit-prepend "jquery.js"

$ ->
  song = new Audio("snd/goodbye.mp3")
  lines = ["Let's finish English!", "Goodbye!"]
  $('html').click ->
    if lines.length > 1
      $('.announce').text lines.shift()
    else
      $('.announce').text lines.shift()
      song.play()