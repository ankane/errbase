# Errbase

Common exception reporting for a variety of services

Automatically detects reporting libraries

Supports [Rollbar](https://rollbar.com/), [Airbrake](https://airbrake.io/), [Exceptional](http://www.exceptional.io/), [Honeybadger](https://www.honeybadger.io/), [Sentry](https://getsentry.com/), [Raygun](https://raygun.io/), [Bugsnag](https://bugsnag.com/), [Appsignal](https://appsignal.com/) and [Opbeat](https://opbeat.com/) [master]

```ruby
begin
  # code
rescue => e
  Errbase.report(e)
end
```

## Installation

Errbase works best as a dependency.

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
