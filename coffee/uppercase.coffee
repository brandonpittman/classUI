#@codekit-prepend "jquery.js"

$ ->
  $('.announce').css("font-size", "25em")
  letters = ("ABCDEFGHIJKLMNOPQRSTUVWXYZ").split("")
  $('html').click ->
    letter = letters[Math.floor(Math.random()*letters.length)]
    index = letters.indexOf(letter)
    letters.splice(index,1)
    $('.announce').text letter
    if letters.length < 1
      $('.announce').css("font-size", "14em")
      $('.announce').text "Good job!"
