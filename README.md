# hashtag-recognition

Simple Hash-Tag recognition explorations using the #scan method on the String class.

## Usage

HashtagRecognition class has a method called `find_on` that receives a string and returns the *hashtags* it contains.

```ruby
  tags = HashtagFinder.find_on("#some #test sample")                // returns  ["some", "test"]
  tags = HashtagFinder.find_on("some test sample")                  // returns  []
  tags = HashtagFinder.find_on("#duplicated #duplicated sample")    // returns  ["duplicated"]
