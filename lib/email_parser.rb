# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser
attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    array = @emails.split(" ")
    parsed_array = array.collect do |email|
      if email.include?(",")
        email.slice!(email.index(","))
        email
      else
        email
      end
      end
    unique_array=[]
    parsed_array.collect do |email|
    unique_array << email  if parsed_array.select {|email| email}.size == 1
      end
    unique_array
  end


end
