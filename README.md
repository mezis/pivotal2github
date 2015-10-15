# Pivotal2github


## Installation

Install it yourself as:

    $ gem install pivotal2github

## Usage

```
Usage: pivotal2github [options]
    -p, --pivotal-token TOKEN        API token for Pivotal Tracker
    -g, --github-token TOKEN         API token for Github
    -r, --repository REPO            Target Github repository
    -P, --project PROJECT_ID         Source Pivotal project ID
    -h, --help                       Prints this help
```

### Caveats

- Only imports non-accepted stories.
- Adds some metadata to the issues (particularly, link to original PT story).
- Doesn't import assignments (but mentions them in the issue).
- Any attachements in comments or stories themselves are not imported.
- Imports state and estimates as tags, to be "translated" into e.g. Zenhub.
- Github Issues can't be deleted, so test this on a temporary repo first.
- Remember you're limited to 5,000 Github API calls per hour. Count one per story and comment.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mezis/pivotal2github.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

