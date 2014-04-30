#@codekit-prepend "jquery.js"

$ ->
  lyrics = ["Oh, it's time to go!", "That's all for today!", "See you next time!", "Goodbye and have a nice day!"]
  song = new Audio("snd/goodbye.mp3")
  lines = ["Let's finish English!", "Goodbye!"]

  $('html').click ->

    if lines.length > 1
      $('.announce').text lines.shift()
    else
      $('.announce').text lines.shift()
      song.play()

      printLyrics = ->
        if lyrics.length < 1
          clearInterval(interval)
        else
          $('.announce').text lyrics.shift()

      interval = setInterval(printLyrics, 4250)
