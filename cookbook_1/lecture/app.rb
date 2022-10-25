require_relative 'router_class'
require_relative 'repository'
require_relative 'controller'

repository = Repository.new
contoller = Controller.new(repository)
router = Router.new(contoller)

router.run
