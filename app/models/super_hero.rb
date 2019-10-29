class SuperHero
    attr_accessor :name, :power, :bio

    def initialize(attributes)
        attributes.each {|key, value| 
        self.send("#{key}=", value)
        }
    end
end