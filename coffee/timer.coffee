#@codekit-prepend "jquery.js"

$ ->
  running = secondsLeft = minutes = seconds = timerID = finished = started = null
  alarm = new Audio('snd/alarm.mp3')

  addTime = (minutesToAdd) ->
    secondsLeft = secondsLeft + (minutesToAdd*60)
    show()
  
  show = ->
    minutes = parseInt(secondsLeft / 60)
    seconds = parseInt(secondsLeft % 60)
    seconds = if seconds < 10 then "0#{seconds}" else seconds
    setText "#{minutes}:#{seconds}"

  setSecondsLeft = ->
    secondsLeft ?= secondsLeft
  
  start = ->
    setSecondsLeft()
    if secondsLeft > 0
      started = true
      timerID = setInterval(update,1000)
    else
      setText "Timer not set!"
      reset()

  setText = (textToInsert)->
    $('.announce').text textToInsert

  update = ->
    running = true
    show()
    if secondsLeft < 1
      stop()
      alarm.play()
    else
      setText "#{minutes}:#{seconds}"
      secondsLeft--

  stop = ->
    setText "Time's up!"
    reset()
    finished = true

  pause = ->
    clearInterval(timerID)
    running = false
  
  reset = ->
    clearInterval(timerID)
    finished = secondsLeft = timeTotal = minutes = seconds = timerID = started = running = null

  $('.1').click ->
    addTime(1)
  $('.2').click ->
    addTime(2)
  $('.5').click ->
    addTime(5)
  $('.10').click ->
    addTime(10)
  $('.reset').click ->
    reset()
    setText "Set timer, please!"
  $('.announce').click ->
    if finished
      alarm.pause()
      alarm.load()
      setText "Set timer, please!"
      finished = false
    else if running
      pause()
    else
      start()