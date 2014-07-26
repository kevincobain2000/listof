require 'find'
require 'json'
require 'yaml'
module Thelister
  module ClassMethods
    DATA_PATH = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'
    DOT_EXTENSION = ".txt"
    def find(query)
      @query = query
      contents_hash = {}
      if File.file?(file_for_query)
        f = File.open(file_for_query) 
        _lineno = 1
        f.each_line.with_index do |line|
          line = line.strip
          if !line.start_with?("#") and line.length >= 1
            contents_hash[_lineno] = line
            _lineno += 1
          elsif line.start_with?("#")
            l = line.sub("#", "").split()
            contents_hash[l[0]] = l[1]
          end
        end
      end
      contents_hash
    end

    def file_for_query
      "#{DATA_PATH}/#{@query}#{DOT_EXTENSION}"
    end

    def all()
      contents_hash = {}
      Dir.glob("#{DATA_PATH}/*#{DOT_EXTENSION}").each_with_index do |path, index|
        contents_hash[index] = File.basename(path, DOT_EXTENSION)
      end
      contents_hash
    end
  end

  module InstanceMethods
  end

  def self.included(receiver)
    receiver.extend         ClassMethods
    receiver.send :include, InstanceMethods
  end
end