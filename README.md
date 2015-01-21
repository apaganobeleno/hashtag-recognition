# hashtag-recognition

Simple Hash-Tag recognition explorations using the #scan method on the String class.

## Usage

HashtagRecognition class has a method called `find_on` that receives a string and returns the *hashtags* it contains.

```ruby
  tags = HashtagsRecognition.find_on("#some #test sample") // should retutn  ["#some", "#test"]
