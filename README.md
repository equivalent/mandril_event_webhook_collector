# Mandril Event Webhook Collector

[![BuildStatus](https://travis-ci.org/equivalent/mandril_event_webhook_collector.svg?branch=travis-ci)](https://travis-ci.org/equivalent/mandril_event_webhook_collector)

Originaly test from Recruiter, but actually usefull Rails app that would:

* receive webhooks from [Mandrill](https://www.mandrill.com/)
* processes the webhook data and stores it into a suitable data store
* displays the following statistics
  * total number of emails sent
  * total number of emails opened
  * total number of clicks
  * open rate per email type
  * click rate per email type


## Todo

* caching
* authentication & authorization
* pagination
* search with ransack

## Related projects

If This project is not exactly what you were looking for,
check my other similar project built in Sinatra
doing similar thing for SendGrid [Sendgrid Event Webhook Collector](https://github.com/equivalent/sendgrid_event_webhook_collector)
