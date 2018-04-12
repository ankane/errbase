require "bundler/setup"
Bundler.require(:default)
require "minitest/autorun"
require "minitest/pride"
require "rollbar"
require "airbrake"
require "honeybadger"
# require "exceptional" # raises exception when not configured
# require "raygun4ruby" # raises exception when not configured
require "sentry-raven"
require "bugsnag"
require "appsignal"
require "opbeat"
require "exception_notification"
require "newrelic_rpm"
# require "google/cloud/error_reporting" # raises exception when not configured
