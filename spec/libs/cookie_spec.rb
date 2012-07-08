require 'spec_helper'

require "utils/cookie"

describe Cookie do
  
  describe "search for last 'yougu'" do
    it "should return .yougu.org" do 
      host = "http://www.yougu.org"
      Cookie.domain(host).should == ".yougu.org"
    end
    it "should return .yougu.org" do
      host = "http://cdn.yougu.org"
      Cookie.domain(host).should == ".yougu.org"
    end
    it "should return .yougu.co.uk" do
      host = "http://cdn.yougu.co.uk"
      Cookie.domain(host).should == ".yougu.co.uk"
    end
    it "should return .yougu.nl" do
      host = "http://fff.yougu.nl"
      Cookie.domain(host).should == ".yougu.nl"
    end
    it "should return .yougu.com" do
      host = "http://yougu.www.yougu.www.yougu.com"
      Cookie.domain(host).should == ".yougu.com"
    end
    it "should return an empty string" do
      host = "http://dsafasdfasdf.com"
      Cookie.domain(host).should == ""
    end
    it "should return .yougu.org" do
      host = "http://dev02.yougu.org"
      Cookie.domain(host).should == ".yougu.org"
    end
    it "should return .yougu.org" do
      host = "http://synthesizers.yougu.org"
      Cookie.domain(host).should == ".yougu.org"
    end
  end
end

