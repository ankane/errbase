require "errbase/version"

module Errbase

  class << self

    def report(e)
      if defined?(Rollbar)
        Rollbar.report_exception(e)
      end
      if defined?(Airbrake)
        Airbrake.notify(e)
      end
      if defined?(Honeybadger)
        Honeybadger.notify(e)
      end
      if defined?(Exceptional)
        Exceptional.handle(e)
      end
      if defined?(Raygun)
        Raygun.track_exception(e)
      end
      if defined?(Raven)
        Raven.capture_exception(e)
      end
      if defined?(Bugsnag)
        Bugsnag.notify(e)
      end
    end

  end

end
