require 'minitest/spec'
require 'minitest/autorun'
require 'hashtag_finder'

describe HashtagFinder do
  it "returns hashtags from a string" do
    HashtagFinder.find_on( "#some #string to test" ).must_equal ["some", "string"]
  end

  it "returns non 0 length hashtags from a string" do
    HashtagFinder.find_on( "# #some #string to test" ).must_equal ["some", "string"]
  end

  it "returns double hash hashtags with only one" do
    HashtagFinder.find_on( "##some #string ###to test" ).must_equal ["some", "string", "to"]
  end

  it "returns double hash hashtags with only one" do
    HashtagFinder.find_on( "some #string ###to test#" ).must_equal [ "string", "to"]
  end

  it "returns only one of the repeated tags" do
    HashtagFinder.find_on( "#some #string #string to tes" ).must_equal ["some", "string"]
  end

  it "counts case-variations as the same" do
    HashtagFinder.find_on( "#some #StRing #string to tes" ).must_equal ["some", "string"]
  end

  it "returns empty array if no hashtags" do
    HashtagFinder.find_on( "some string to test" ).must_equal []
  end

  it "returns empty array if nil passed" do
    HashtagFinder.find_on( nil ).must_equal []
  end

  it "returns empty array if empty passed" do
    HashtagFinder.find_on("").must_equal []
  end
end
