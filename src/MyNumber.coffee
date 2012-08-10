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
    return [@value] if @value < 2
    div = (d for d in [1..@value/2] when @value % d is 0)
    div.push @value
    div

exports.MyNumber = MyNumber
