class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project_instance)
        ProjectBacker.new(project_instance, self)
    end

    def backed_projects
        project_backers = ProjectBacker.all.select do |element|
          element.backer == self
        end
        project_backers.map do |element|
          element.project
          #still struggling with .map do methods
        end
    end
end
 