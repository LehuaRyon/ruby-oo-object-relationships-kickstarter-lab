class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        projects_backed = ProjectBacker.all.select {|backer| backer.project == self}
        projects_backed.map {|projects_backed| projects_backed.backer}
    end
end