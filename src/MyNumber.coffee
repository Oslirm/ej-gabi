class MyNumber
  constructor: (@value) ->
  isInteger: ->
    Math.floor(@value) is @value

  isTriangular: ->
    return false unless @isInteger()
    n = Math.abs @value
    m = -1/2 + Math.sqrt(1/4 + 2 * n)
    new MyNumber(m).isInteger()

  isPerfect: ->
    return false unless @isInteger()
    d = 1
    m = 0
    while d <= @value/2
      m += d if @value % d is 0
      d++
    m is @value

exports.MyNumber = MyNumber
