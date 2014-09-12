junar
====

Junar is an API wrapper for any government data platform that is built using Junar

### Installation

Until the gem is released

    gem build junar.gemspec
    gem install <built gem>

### Documentation

The git wiki should be up to date and contain all that is needed to learn how to use this gem.

### Authentication

You can obtain an API token from any of the city owned and Junar built open data portals.

The San Jose registration page, for example: 

[register]: http://data.sanjoseca.gov/developers/

### Setup 

Constructing a client object is fairly straight forward.

```ruby
client = Junar::Client.new ({
  token: "#{your_token_here}",
  uri: 'http://api.data.sanjoseca.gov'
}) 
```

You can then make requests using this object.

### Usage

Usage is fairly simple at this early stage of development. The only functionality that is available is searching.

```ruby
client.search category: 'datastreams', query: 'FIRE'
client.search category: 'dashboards', query: 'FIRE'
```

As functionality expands, it's always good to check out the unit tests to see more examples.

### Support

This wrapper supports Junar API v1.0.
