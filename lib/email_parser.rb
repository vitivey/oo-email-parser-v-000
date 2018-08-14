# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailParser

@@all_emails=[]

  def initialize(emails)
    @@all_emails << emails
  end

  def parse
    a = @@all_emails.split(" ")
    # b = a.split(",")
    binding.pry
  end


end
