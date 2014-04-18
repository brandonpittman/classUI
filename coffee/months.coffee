#@codekit-prepend "jquery.js"

$ ->
  months = ['January (１月)','February (２月)','March (３月)','April (４月)','May (５月)','June (６月)','July (７月)','August (８月)','September (９月)','October (１０月)','November (１１月)','December (１２月)']
  i = 0
  song = new Audio('snd/months.mp3')
  song.play()
  $('html').click ->
    showMonth = ->
      $('.announce').css('font-size', '8em')
      $('.announce').text months[i]
      i++
    # if months.length > 0 then $('.announce').text months.shift() else $('.announce').text "Good job!"
    if i < months.length
      showMonth()
    else
      i = 0
      showMonth()