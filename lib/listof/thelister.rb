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
        f.each_line.with_index do |line, lineno = 1|
          line = line.strip
          if !line.start_with?("#") and line.length >= 1
            contents_hash[lineno] = line
          else
            contents_hash['source'] = line.sub("#","")
          end
        end
      end
      contents_hash
    end

    def file_for_query
      "#{in_folder}/#{@query}#{DOT_EXTENSION}"
    end
    def in_folder
      "#{DATA_PATH}#{@query[0]}"
    end
    def by_alphabet(query)
      @query = query
      contents_hash = {}
      Dir["#{in_folder}/*.txt"].each_with_index do |path, index = 1|
        contents_hash[index] = File.basename(path, DOT_EXTENSION)
      end
      contents_hash
    end
    def all()
      contents_hash = {}
      Dir.glob("#{DATA_PATH}/**/*#{DOT_EXTENSION}").each_with_index do |path, index|
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