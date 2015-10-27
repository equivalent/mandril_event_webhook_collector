# Mandril Event Webhook Collector

[![BuildStatus](https://travis-ci.org/equivalent/mandril_event_webhook_collector.svg)](https://travis-ci.org/equivalent/mandril_event_webhook_collector)

Sample Ruby on Rails that would:

* receive webhooks from [Mandrill](https://www.mandrill.com/)
* processes the webhook data and stores it into a suitable data store
* displays the following statistics
  * total number of emails sent
  * total number of emails opened
  * total number of clicks
  * open rate per email type
  * click rate per email type

Note: The application is overkill for simple task like this (no need for processor object, or for using heavy framework like Rails) I was just demonstrating particilar approach at one job interview.

## Usage

Point Mandrill event webhook to `/api/v1/events`

Processing of Events is done via background job so make sure delayed job
is running `bundle exec bin/delayed_job start`


## Todo

* introduce Russion-Doll caching or level caching
* implement policy clases for authentication & authorization
* pagination
* search with ransack
* implement Sidekiq for background processing
* extract Event#raw to some more sutable storage (Redis? Mongo?) 

## Related projects

If This project is not exactly what you were looking for,
check my other similar project built in Sinatra
doing similar thing for SendGrid [Sendgrid Event Webhook Collector](https://github.com/equivalent/sendgrid_event_webhook_collector)
