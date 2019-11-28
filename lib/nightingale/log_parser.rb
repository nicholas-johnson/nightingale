# frozen_string_literal: true

require 'nightingale/logfile'
require 'nightingale/counter'
require 'nightingale/parser'

module Nightingale
  # Parses a logfile from a file_path
  class LogParser
    def parse(file_path)
      logfile = Logfile.new(file_path)
      counter = Counter.new
      parser = Parser.new logfile: logfile, counter: counter
      parser.parse_file
      counter.count
    end
  end
end
