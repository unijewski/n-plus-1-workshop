# N+1 queries problem workshop

This is an example app, showing the classic N+1 queries problem that is described in [Rails guides](https://guides.rubyonrails.org/active_record_querying.html#eager-loading-associations).

## Installation

1. Make sure you have Ruby `3.0.3` installed.

2. Clone the repository.

3. Run `bin/setup`.

## Generating sample data

To identify the problem, you need to generate some data. Run:

```bundle exec rake generate_data N=1000```

in order to insert 1000 rows of posts with associated records.

## Things to do

Before diving into the problem, you should fix two small issues in the codebase.

To check them out, run ```rails notes``` or look at the entire checklist below.

### Checklist

- [ ] Fix associations between models when creating records in the rake task.
- [ ] Display all posts on the `/posts` page in the following format: `<b>first name from city:</b> body`.
- [ ] Visit the page and see what's happening. Logs will be useful.
- [ ] Identify the performance problem and fix it. You can install [bullet](https://github.com/flyerhzm/bullet) to get some help.
