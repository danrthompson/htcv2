require 'spec_helper'

describe Htcv2Formatter, '#format_as_xhtml' do
  it "should format code blocks" do
    Htcv2Formatter.format_as_xhtml("--- ruby\n"+
                                  "puts 'hi'\n"+
                                  "---\n").
                                  should match(/puts.*hi/)
  end
end

