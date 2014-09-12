[![Build Status](https://travis-ci.org/howdoicomputer/junar.svg?branch=master)](https://travis-ci.org/howdoicomputer/junar)
[![Code Climate](https://codeclimate.com/github/howdoicomputer/junar/badges/gpa.svg)](https://codeclimate.com/github/howdoicomputer/junar)

junar
====

Junar is an API wrapper for any government data platform that was built using the Junar open data solution.

### Installation

Until the gem is released

    gem build junar.gemspec
    gem install <built gem>

### Documentation

The git wiki should be up to date and contain all that is needed. 

Yardoc support is available as well.

    yard

The above command will generate a doc directory filled with static content.

    yard server

Yard can serve up the static content on port 8808 for browsing.

### Authentication

You can obtain an API token from any of the city owned and Junar built open data portals.

The San Jose registration page, for example: 

http://data.sanjoseca.gov/developers/

### Testing

    rspec spec

Note, the Junar API is just awful. Prepare for timed out connections, bad request errors, etc. The builds will fail often because of this. I am depending heavily on caching to side-step this problem. I am planning on introducing more graceful failures and better mocking in the future to help with the dependendability of testing.

### Setup 

Constructing a client object is fairly straight forward.

```ruby
client = Junar::Client.new ({
  token: your_token_here,
  uri: 'http://api.data.sanjoseca.gov'
}) 
```

You can then make requests using this object.

### Usage

Usage is fairly simple at this early stage of development. The only functionality that is available is searching.

#### Search

```ruby
client.search category: 'datastreams', query: 'FIRE'
client.search category: 'dashboards', query: 'FIRE'
```

As functionality expands, it's always good to check out the unit tests to see more examples.

### Support

This wrapper supports Junar API v1.0 and is tested using Ruby 2.1.1. I have no plans to support the 1.9.X version of Ruby.
