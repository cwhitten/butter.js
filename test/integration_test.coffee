should = require 'should'
{Butter} = require '../src'

describe 'Butter', ->

  describe 'churn calculation', ->
    startCount = 1000
    endCount = 1438
    totalChurn = 62
    activity = 0.5
    days = 31

    it 'should return the expected value', (done) ->
      @timeout 30000
      churn = new Butter(startCount,endCount,totalChurn,activity,days).churn()
      churn.should.eql .051
      done()
