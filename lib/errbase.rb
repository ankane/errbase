require "errbase/version"

module Errbase
  class << self
    def report(e)
      Rollbar.error(e) if defined?(Rollbar)
      Airbrake.notify(e) if defined?(Airbrake)
      Honeybadger.notify(e) if defined?(Honeybadger)
      Exceptional.handle(e) if defined?(Exceptional)
      Raygun.track_exception(e) if defined?(Raygun)
      Raven.capture_exception(e) if defined?(Raven)
      Bugsnag.notify(e) if defined?(Bugsnag)
      Appsignal.send_exception(e) if defined?(Appsignal)
      Opbeat.capture_exception(e) if defined?(Opbeat)
      PartyFoul::RacklessExceptionHandler.handle(e, {}) if defined?(PartyFoul)
    end
  end
end
