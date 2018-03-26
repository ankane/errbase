# Errbase

A common exception reporting library for a variety of services.

Libraries are automatically detected. Supports:

- [Airbrake](https://airbrake.io/)
- [Appsignal](https://appsignal.com/)
- [Bugsnag](https://bugsnag.com/)
- [Exception Notification](https://github.com/smartinez87/exception_notification)
- [Google Stackdriver](https://cloud.google.com/stackdriver/)
- [Honeybadger](https://www.honeybadger.io/)
- [Opbeat](https://opbeat.com/)
- [Raygun](https://raygun.io/)
- [Rollbar](https://rollbar.com/)
- [Sentry](https://getsentry.com/)

```ruby
begin
  # code
rescue => e
  Errbase.report(e)
end
```

You can add extra context with: [master]

```ruby
Errbase.report(e, {username: "hello"})
```

## Installation

Errbase is designed to be used as a dependency.

Add this line to your gemspec:

```ruby
spec.add_dependency "errbase"
```

## TODO

- Ability to specify services
- Support for more services

## Contributing

Everyone is encouraged to help improve this project. Here are a few ways you can help:

- [Report bugs](https://github.com/ankane/errbase/issues)
- Fix bugs and [submit pull requests](https://github.com/ankane/errbase/pulls)
- Write, clarify, or fix documentation
- Suggest or add new features
