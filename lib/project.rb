class Project
   
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer_instance)
        ProjectBacker.new(self, backer_instance)
    end
    
    def backers
        project_backers = ProjectBacker.all.select do |element| 
          element.project == self
        end
        project_backers.map do |element|
          element.backer
              #still struggling with .map do methods
        end
      end
    end