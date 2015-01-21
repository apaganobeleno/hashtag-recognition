class HashtagFinder
    def self.find_on( subject ) 
      result = []

      unless !subject || subject.empty?
        expression = /#(\S*)/
        matches = subject.scan(expression)
        result = clean(matches)
        
        return result
      else
        return result
      end
    end

    def self.clean( matches )
      result = matches.flatten.collect do |el| 
        el.gsub('#', '') if el.size > 0 
      end

      result.compact!
      return result
    end
end