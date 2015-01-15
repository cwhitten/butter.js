module.exports = class Butter

  constructor: (@startCount, @endCount, @totalChurn, @activity, @days) ->

  churn: ->
    netAdds = @endCount - @startCount
    customerDays = @startCount * @days + @activity * netAdds * @days
    churnPerDay = @totalChurn / customerDays
    Number (@days * churnPerDay).toFixed(3)

