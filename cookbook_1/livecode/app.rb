require_relative 'router'
require_relative 'cookbook'

csv_file_path = 'recipes.csv'

cookbook = Cookbok.new(csv_file_path)
router = Router.new(cookbook)

router.run
