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

Every day that a customer keeps their subscription is another day when they didn’t
churn. If they are your customer for ten days and churned on the tenth day,
they had ten opportunities to churn, and exercised that option on one of the
ten days. Another way to think about this is that they churned on 1/10 of the
days that they could have churned.

You can aggregate that probability across all of your customers and come up with a
more accurate churn rate.

Background
----------

* [A Better Way to Calculate Your Churn Rate](https://blog.recurly.com/2014/08/better-way-to-calculate-your-churn-rate)

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

`startCount` = customers at the start of the period

`endCount` = customers at the end of the period

`totalChurn` = existing customers who churned + new customers who churned

`activity` = the percentage of your user activity in the time interval (best calculated by summing user activity over each day in the period)

`days` = time interval

Authors
-------

* [Chris Whitten](https://github.com/cwhitten)
