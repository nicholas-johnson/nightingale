# frozen_string_literal: true

module Nightingale
  # Iterates over a log file
  class Parser
    def initialize(args)
      @counter = args[:counter]
      @logfile = args[:logfile]
    end

    def parse_file
      @logfile.read_lines do |line|
        @counter.add(parse_path(line), parse_ip(line))
      end
      @counter
    end

    def parse_path(line)
      line.strip.split(' ').first
    end

    def parse_ip(line)
      line.strip.split(' ')[1]
    end
  end
end
