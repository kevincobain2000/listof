require 'find'
require 'json'
require 'yaml'
module Thelister
  module ClassMethods
    DATA_PATH = File.dirname(File.dirname(File.dirname(__FILE__))) + '/data/'
    EXTENSION = ".txt"
    def find(query)
      @query = query
      contents_hash = {}
      if File.file?(file_for_query)
        f = File.open(file_for_query) 
        f.each_line.with_index do |line, lineno|
          contents_hash[lineno] = line.strip
        end
      end
      contents_hash
    end

    def file_for_query
      "#{in_folder}/#{@query}#{EXTENSION}"
    end
    def in_folder
      "#{DATA_PATH}#{@query[0]}"
    end
    def by_alphabet(query)
      @query = query
      contents_hash = {}
      Dir["#{in_folder}/*.txt"].each_with_index do |path, index|
        contents_hash[index] = File.basename(path, ".txt")
      end
      contents_hash
    end
    def all()
      contents_hash = {}
      Dir.glob("#{DATA_PATH}/**/*.txt").each_with_index do |path, index|
        contents_hash[index] = File.basename(path, ".txt")
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