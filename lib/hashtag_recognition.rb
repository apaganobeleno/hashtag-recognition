class HashtagRecognition 
    def self.find_on( subject ) 
      result = []

      unless !subject || subject.empty?
        expression = /#(\S*)/
        matches = subject.scan(expression)
        result = matches.flatten.collect do |el| 
          el.gsub('#', '') if el.size > 0 
        end

        result.compact!
        return result
      else
        return result
      end
    end
end