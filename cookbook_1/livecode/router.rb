class Router
  def initialize(repository)
    @repository = repository
    @controller = Controller.new
  end
end
