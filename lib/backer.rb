# one backer belongs to a project

class Backer
    attr_reader :name
    attr_accessor :backed_projects
    @@all = []
    def initialize(name, backed_projects = [])
        @name = name
        @backed_projects = backed_projects
        @@all << self
    end

    def all
        @@all
    end

    def back_project(project)
        self.backed_projects << project
        project.backers << self
    end

end