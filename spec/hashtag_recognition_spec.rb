require 'minitest/spec'
require 'minitest/autorun'
require 'hashtag_finder'

describe HashtagFinder do
  it "should return hashtags from a string" do
    HashtagFinder.find_on( "#some #string to test" ).must_equal ["some", "string"]
  end

  it "should return non 0 length hashtags from a string" do
    HashtagFinder.find_on( "# #some #string to test" ).must_equal ["some", "string"]
  end

  it "should return double hash hashtags with only one" do
    HashtagFinder.find_on( "##some #string ###to test" ).must_equal ["some", "string", "to"]
  end

  it "should return double hash hashtags with only one" do
    HashtagFinder.find_on( "some #string ###to test#" ).must_equal [ "string", "to"]
  end

  it "should return empty array if no hashtags" do
    HashtagFinder.find_on( "some string to test" ).must_equal []
  end

  it "should return empty array if nil passed" do
    HashtagFinder.find_on( nil ).must_equal []
  end

  it "should return empty array if empty passed" do
    HashtagFinder.find_on("").must_equal []
  end
end
