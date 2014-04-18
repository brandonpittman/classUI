#@codekit-prepend "jquery.js"

$ ->
  #letters = ["Aa", "Bb", "Cc", "Dd", "Ee", "Ff", "Gg", "Hh", "Ii", "Jj", "Kk", "Ll", "Mm", "Nn", "Oo", "Pp", "Qq", "Rr", "Ss", "Tt", "Uu", "Vv", "Ww", "Xx", "Yy", "Zz"]
  $('.announce').css("font-size", "25em")
  letters = ("abcdefghijklmnopqrstuvwxyz").split("")
  $('html').click ->
    letter = letters[Math.floor(Math.random()*letters.length)]
    $('.announce').text letter
