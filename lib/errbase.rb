require "errbase/version"

module Errbase
  class << self
    def report(e, info = {})
      Airbrake.notify(e, info) if defined?(Airbrake)

      Appsignal.send_error(e, info) if defined?(Appsignal)

      if defined?(Bugsnag)
        Bugsnag.notify(e) do |report|
          report.add_tab(:info, info) if info.any?
        end
      end

      # TODO remove in next version
      # don't worry about adding info
      Exceptional.handle(e) if defined?(Exceptional)

      ExceptionNotifier.notify_exception(e, data: info) if defined?(ExceptionNotifier)

      # TODO add info
      Google::Cloud::ErrorReporting.report(e) if defined?(Google::Cloud::ErrorReporting)

      Honeybadger.notify(e, context: info) if defined?(Honeybadger)

      # TODO add info
      NewRelic::Agent.notice_error(e) if defined?(NewRelic::Agent)

      # TODO add info
      if defined?(Opbeat)
        if Opbeat.respond_to?(:report)
          Opbeat.report(e)
        else
          Opbeat.capture_exception(e)
        end
      end

      Raven.capture_exception(e, extra: info) if defined?(Raven)

      Raygun.track_exception(e, custom_data: info) if defined?(Raygun)

      Rollbar.error(e, info) if defined?(Rollbar)
    rescue => e
      $stderr.puts "[errbase] Error reporting exception: #{e.class.name}: #{e.message}"
    end
  end
end
