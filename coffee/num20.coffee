#@codekit-prepend "jquery.js"

$ ->
  n = [1..20]
  $('html').click ->
    if n.length > 0 then $('.announce').text n.shift() else $('.announce').text "Good job!"