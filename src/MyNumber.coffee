class MyNumber
  constructor: (@value) ->
  isInteger: ->
    Math.floor(@value) is @value

  isTriangular: ->
    return false unless @isInteger()
    n = Math.abs @value
    i = 0
    m = 0
    while m < n
      m += i
      i++
    m is n

exports.MyNumber = MyNumber
