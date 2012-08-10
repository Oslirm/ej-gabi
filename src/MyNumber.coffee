class MyNumber
  constructor: (@value) ->
  isInteger: ->
    Math.floor(@value) is @value

exports.MyNumber = MyNumber
