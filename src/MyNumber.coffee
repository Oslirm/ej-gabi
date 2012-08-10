class MyNumber
  constructor: (@value) ->
  isInteger: ->
    Math.floor(@value) is @value

  isTriangular: ->
    return false unless @isInteger()
    n = Math.abs @value
    m = -1/2 + Math.sqrt(1/4 + 2 * n)
    new MyNumber(m).isInteger()

exports.MyNumber = MyNumber
