class Backer
  
  attr_accessor :name
  attr_reader :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(proj) 
    @backed_projects << proj 
    proj.backers << self
  end
  
end