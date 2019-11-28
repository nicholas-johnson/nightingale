# frozen_string_literal: true

module Nightingale
  # Handles line by line input from the logfile
  class Logfile
    attr_accessor :path

    def initialize(path)
      @path = "#{Dir.pwd}/#{path}"
    end

    def read_lines
      File.open(@path, 'r').each { |line| yield line.strip }
    end
  end
end
