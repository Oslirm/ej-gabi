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
    m = 0
    for d in @divisors()
      m += d
    m is 2 *  @value

  divisors: ->
    d = 1
    div = []
    while d <= @value/2
      div.push d if @value % d is 0
      d++
    div.push @value
    div

exports.MyNumber = MyNumber
