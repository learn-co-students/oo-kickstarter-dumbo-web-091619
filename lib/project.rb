class Project
    attr_reader :backers, :title
    @@all = []
    def initialize(title)
        @title = title
        @backers = []
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        backers << backer
        self.backers.map {|backer| backer.backed_projects << self}
        # binding.pry
    end


end