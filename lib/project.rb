# one project has many backers

class Project
    attr_reader :title, :backers
    @@all = []
    def initialize(title, backers = [])
        @title = title
        @backers = backers
        @@all << self
    end

    def all
        @@all
    end

    def add_backer(backer)
        self.backers << backer
        backer.backed_projects << self
    end
end