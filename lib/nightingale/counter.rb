# frozen_string_literal: true

module Nightingale
  # Keeps a cumulative count of log entries
  class Counter
    attr_reader :count

    def initialize
      @count = {}
    end

    def add(url = '', ip = '')
      @count[url] ? @count[url].push(ip) : @count[url] = [ip]
    end
  end
end
