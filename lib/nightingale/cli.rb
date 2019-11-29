# frozen_string_literal: true

require 'nightingale/log_parser'

module Nightingale
  # Renders a Counter object nicely in the CLI
  class CLI
    def initialize(file_path)
      @file_path = file_path
      @log_parser = LogParser.new
    end

    def render
      counter = @log_parser.parse(@file_path)
      rows = counter.to_a.map do |row|
        path, ips = row
        "#{path}    #{ips.uniq}"
      end
      puts rows
    end

    def render_count
      counter = @log_parser.parse(@file_path)
      rows = counter.sort_by { |_, v| v.uniq.count }.reverse.map do |row|
        path, ips = row
        "#{path}   #{ips.uniq.count} unique views"
      end
      puts rows
    end
  end
end
