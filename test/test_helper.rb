require "bundler/setup"
Bundler.require(:default)
require "minitest/autorun"
require "minitest/pride"
require "airbrake"
require "appsignal"
require "bugsnag"
# require "exceptional" # raises exception when not configured
require "exception_notification"
# require "google/cloud/error_reporting" # raises exception when not configured
require "honeybadger"
require "newrelic_rpm"
require "opbeat"
# require "raygun4ruby" # raises exception when not configured
require "rollbar"
require "sentry-raven"
