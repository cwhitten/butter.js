butter.js
============
[![Build
Status](https://travis-ci.org/cwhitten/butter.js.svg)](https://travis-ci.org/cwhitten/butter.js) [![npm version](https://badge.fury.io/js/butter.js.svg)](http://badge.fury.io/js/butter.js)

A NodeJS library for effective customer churn calculation.

Features
--------
* Churn rate as a probability - how many customers churned, and how many opportunities did they have to churn
* Monthly and weekly segments

Background
----------

Every day that a customer keeps her subscription is another day when she didn’t
churn. If she is your customer for seven days and churned on the seventh day,
she had seven opportunities to churn, and exercised that option on one of the
seven days. Another way to think about this is that she churned on 1/7 of the
days that she could have churned.

You can aggregate that probability across all of your customers and come up with a
more accurate churn rate.

Install
-------

```
npm install butter.js
```

Usage
-----

Basic example:

```javascript
var Butter = require('butter.js');

var churn = new Butter(startCount, endCount, totalChurn, activity, days).churn();

```

startCount = customers at the start of the period
endCount = customers at the end of the period
totalChurn = existing customers who churned + new customers who churned
activity = the percentage of your user activity in the time interval (best calculated by summing user activity over each day in the period)
days = time interval

Authors
-------

* [Chris Whitten](https://github.com/cwhitten)

