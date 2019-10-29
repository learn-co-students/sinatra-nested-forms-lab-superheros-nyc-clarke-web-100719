class Team
    attr_accessor :name, :motto, :members

    def initialize(attributes)
        attributes.each {|key, value| 
        self.send("#{key}=", value)
        }
    end
end