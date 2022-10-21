require_relative 'router_class'
require_relative 'repository'

repository = Repository.new
router = Router.new(repository)

router.run
