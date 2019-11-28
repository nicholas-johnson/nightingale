# Nightingale Smart Pensions Tech Test for Nicholas Johnson.

A simple log parser that receives a file path and retuerns a count of urls.

On the face of it, this is quite a simple problem and could be solved in a couple of lines of golf, but I've build out a fully-worked solution for the sake of the tech test. Hope this is OK.

Features:

- A reusable gem. You can import and call `Nightingale.parse(file_path)`. You'll get a Hashmap back.
- A CLI. From the command line call nightingale --path path/to/file.log
- Line by line loading of code. You can handle very large files.

The log_file here is quite short, but from experience I know these can reach many MBs, so I've used IO.readline to load lines into memory one at a time.

## Architecture

Again, this is probably too much given the size of the problem, but I've assumed this is a proxy for a larger problem so I've written it in a scalable way.

- Input - receives a file_path. Exposes a method that receives a block. Lines are passed to the block one by one.
- Parser - Receives an input and a counter. Parses the lines one by one and passes them to the counter.
- Counter - keeps a running count.
- Output - Optionally prints to the console.
- Nightingale - exposes a parse method. Creates an Input, a Parser and a Counter, sets them running, and returns the Counter.

## Tests

Tests are in MiniTest, but I'm fine with RSpec if you prefer. Run with `rake test`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nightingale'
```

And then execute:

    $ bundle

## CLI Usage

Add to your path or cd into the correct directory.

execute:

`./nightingale.rb --path path/to/your/file`
