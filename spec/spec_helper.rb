require 'pry'

require_relative '../lib/dwelling.rb'

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file|
  require File.basename(file, File.extname(file))
end
