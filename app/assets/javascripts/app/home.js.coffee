# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$(document).ready ->
  $("#flash").delay(500).fadeIn "normal", ->
    $(this).delay(5000).fadeOut()
  updateClock()
  refreshClock = setInterval(->
    updateClock()
  , 1000)

#Date and Clock
updateClock = ->
  currentTime = new Date()
  currentDay = currentTime.getDay() + 1
  currentMonth = currentTime.getMonth() + 1
  currentYear = currentTime.getFullYear()
  currentFullDayString = currentYear + "/" + currentMonth + "/" + currentDay
  currentHours = currentTime.getHours()
  currentHours = (if (currentHours > 12) then currentHours - 12 else currentHours)
  currentHours = (if (currentHours is 0) then 12 else currentHours)
  currentMinutes = currentTime.getMinutes()
  currentMinutes = (if currentMinutes < 10 then "0" else "") + currentMinutes
  currentSeconds = currentTime.getSeconds()
  currentSeconds = (if currentSeconds < 10 then "0" else "") + currentSeconds
  timeOfDay = (if (currentHours < 12) then "AM" else "PM")
  currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay
  $("#clock").html currentFullDayString + " " + currentTimeString
