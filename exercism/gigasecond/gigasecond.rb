module BookKeeping
    VERSION = 5
end

class Gigasecond
    def self.from(start_time)
        return gigasecond = start_time + (10 ** 9)
    end
end
