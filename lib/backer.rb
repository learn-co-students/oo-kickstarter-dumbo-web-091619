class Backer
    attr_reader :backed_projects, :name
    @@all = []
    def initialize(name)
        @name = name
        @backed_projects = []
        @@all << self
    end

    def self.all
        @@all
    end

    def projects 
        Project.all.select {|project| project.backer == self}
    end

    def back_project(project)
        @backed_projects << project 
        self.backed_projects.map {|project| project.backers << self}
        # binding.pry
    end


        
 

end