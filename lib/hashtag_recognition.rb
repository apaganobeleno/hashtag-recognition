class HashtagRecognition 
    def self.find_on( subject ) 
      result = []

      unless !subject || subject.empty?
        expression = /#(\S*)/
        matches = subject.scan(expression)

        return matches.flatten       
      else
        return result
      end
    end
end