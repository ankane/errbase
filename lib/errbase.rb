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
      if defined?(Opbeat)
        if Opbeat.respond_to?(:report)
          Opbeat.report(e)
        else
          Opbeat.capture_exception(e)
        end
      end
      ExceptionNotifier.notify_exception(e) if defined?(ExceptionNotifier)
      Google::Cloud::ErrorReporting.report(e) if defined?(Google::Cloud::ErrorReporting)
    end
  end
end
