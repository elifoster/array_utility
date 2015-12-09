require_relative '../lib/array_utility'

using ArrayUtility

[1, 2, 3].next(2)
# => 3

[1, 2, 3].next(3)
# => nil

[1, 2, 3].before(2)
# => 1

[1, 2, 3].before(1)
# => 3

[1, 2, 3].prepend_capped(4, 3)
# => [4, 1, 2]

[1, 2, 3].prepend_capped(70, 4)
# => [70, 1, 2, 3]

[1, 2, 3].prepend_capped(6, 2)
# => [6, 1]
