# Our product development standards

We believe in creating products that are good; good design, good for humanity, and good for the planet.

## Ruby

**Includes**

- [Rubocop](https://www.rubocop.org/) to enforce code conventions

### Installation

Include this in your ruby project by adding this to your `Gemfile`

```bash
# Gemfile
gem 'invisible_standards'
```

You can also install this globally by running this command in your terminal

```bash
# on command line
gem install invisible_standards
```

### Rubocop

You can include [Rubocop](https://www.rubocop.org/) config files from gems. To include ours, add this to your local `.rubocop.yml`

```yml
# .rubocop.yml
inherit_gem:
  invisible_standards: ihv-rubocop.yml
```

The local set of rules will be added to your ruleset. Your local config will overwrite any options. Make sure to run it using local gems if you installed it using the `Gemfile` (`bundle exec rubocop`)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/invisiblehats/invisible_standards. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ClassName project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/invisible_standards/blob/master/CODE_OF_CONDUCT.md).

## Development team

### People

- [Myk Klemme - @mklemme](https://github.com/mklemme) Lead developer and maintainer for this project.

### Partners

- [Invisible Hat Ventures - @invisiblehats](https://github.com/invisiblehats) A California-based idea incubator
