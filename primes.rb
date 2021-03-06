require "prime"

@digits_sets = [
  [9, 9, 9, 9, 9, 6, 6, 4, 1, 0], [9, 9, 9, 9, 9, 4, 1, 0, 0, 0], [9, 9, 9, 9, 8, 8, 8, 8, 6, 5], [9, 9, 9, 9, 8, 8, 3, 3, 0, 0], [9, 9, 9, 9, 8, 6, 6, 5, 3, 0], [9, 9, 9, 9, 8, 6, 6, 5, 0, 0], [9, 9, 9, 9, 8, 6, 5, 3, 0, 0], [9, 9, 9, 9, 8, 6, 3, 3, 2, 0], [9, 9, 9, 9, 8, 5, 5, 2, 2, 0], [9, 9, 9, 9, 8, 5, 3, 3, 3, 0], [9, 9, 9, 9, 6, 5, 5, 3, 0, 0], [9, 9, 9, 9, 6, 4, 4, 3, 3, 0], [9, 9, 9, 9, 5, 3, 3, 3, 2, 0], [9, 9, 9, 9, 5, 3, 3, 2, 0, 0], [9, 9, 9, 8, 8, 8, 5, 5, 3, 0], [9, 9, 9, 8, 8, 8, 3, 2, 2, 0], [9, 9, 9, 8, 8, 6, 6, 5, 5, 2], [9, 9, 9, 8, 8, 6, 5, 2, 2, 0], [9, 9, 9, 8, 8, 5, 5, 5, 3, 0], [9, 9, 9, 8, 8, 5, 5, 5, 0, 0], [9, 9, 9, 8, 6, 6, 5, 5, 5, 2], [9, 9, 9, 8, 6, 6, 5, 3, 3, 0], [9, 9, 9, 8, 6, 6, 5, 3, 0, 0], [9, 9, 9, 8, 6, 6, 3, 3, 3, 2], [9, 9, 9, 8, 6, 6, 3, 3, 2, 0], [9, 9, 9, 8, 6, 5, 5, 3, 2, 2], [9, 9, 9, 8, 6, 5, 5, 2, 2, 0], [9, 9, 9, 8, 6, 5, 3, 3, 0, 0], [9, 9, 9, 8, 6, 5, 3, 2, 2, 2], [9, 9, 9, 6, 6, 6, 5, 3, 2, 0], [9, 9, 9, 6, 6, 6, 4, 3, 1, 0], [9, 9, 9, 6, 6, 5, 3, 2, 0, 0], [9, 9, 9, 6, 6, 4, 4, 1, 1, 1], [9, 9, 9, 6, 5, 2, 0, 0, 0, 0], [9, 9, 9, 6, 4, 3, 3, 1, 0, 0], [9, 9, 9, 6, 4, 3, 1, 0, 0, 0], [9, 9, 9, 6, 3, 3, 3, 2, 2, 0], [9, 9, 9, 5, 5, 5, 5, 3, 2, 0], [9, 9, 9, 5, 5, 5, 3, 2, 2, 0], [9, 9, 9, 5, 5, 5, 2, 2, 0, 0], [9, 9, 9, 4, 4, 4, 4, 3, 1, 0], [9, 9, 9, 4, 4, 4, 3, 3, 1, 1], [9, 9, 9, 4, 4, 3, 1, 1, 1, 0], [9, 9, 9, 4, 3, 1, 0, 0, 0, 0], [9, 9, 9, 3, 1, 1, 0, 0, 0, 0], [9, 9, 8, 8, 8, 8, 8, 8, 2, 2], [9, 9, 8, 8, 8, 8, 5, 3, 3, 0], [9, 9, 8, 8, 8, 8, 3, 3, 2, 0], [9, 9, 8, 8, 8, 6, 6, 6, 5, 5], [9, 9, 8, 8, 8, 6, 6, 6, 5, 2], [9, 9, 8, 8, 8, 6, 6, 5, 2, 0], [9, 9, 8, 8, 8, 6, 5, 5, 3, 0], [9, 9, 8, 8, 8, 6, 5, 3, 3, 2], [9, 9, 8, 8, 8, 6, 5, 2, 0, 0], [9, 9, 8, 8, 8, 5, 5, 2, 2, 2], [9, 9, 8, 8, 6, 6, 6, 3, 3, 0], [9, 9, 8, 8, 6, 6, 5, 5, 5, 0], [9, 9, 8, 8, 6, 6, 5, 5, 3, 2], [9, 9, 8, 8, 6, 6, 5, 5, 2, 0], [9, 9, 8, 8, 6, 6, 5, 3, 2, 2], [9, 9, 8, 8, 6, 6, 3, 2, 2, 2], [9, 9, 8, 8, 6, 5, 5, 3, 3, 2], [9, 9, 8, 8, 6, 5, 3, 3, 2, 2], [9, 9, 8, 8, 6, 5, 3, 2, 2, 0], [9, 9, 8, 8, 6, 3, 3, 2, 2, 2], [9, 9, 8, 8, 6, 3, 2, 2, 2, 0], [9, 9, 8, 8, 5, 5, 3, 2, 0, 0], [9, 9, 8, 8, 5, 3, 3, 2, 2, 0], [9, 9, 8, 8, 5, 3, 2, 2, 0, 0], [9, 9, 8, 8, 5, 2, 2, 0, 0, 0], [9, 9, 8, 6, 6, 6, 6, 5, 3, 0], [9, 9, 8, 6, 6, 6, 5, 3, 3, 3], [9, 9, 8, 6, 6, 6, 5, 3, 3, 0], [9, 9, 8, 6, 6, 6, 5, 0, 0, 0], [9, 9, 8, 6, 6, 6, 3, 2, 0, 0], [9, 9, 8, 6, 6, 5, 5, 3, 2, 2], [9, 9, 8, 6, 6, 5, 5, 2, 2, 0], [9, 9, 8, 6, 6, 5, 3, 3, 3, 0], [9, 9, 8, 6, 6, 5, 3, 3, 0, 0], [9, 9, 8, 6, 6, 3, 3, 2, 0, 0], [9, 9, 8, 6, 6, 2, 2, 2, 2, 0], [9, 9, 8, 6, 5, 5, 5, 3, 2, 0], [9, 9, 8, 6, 5, 5, 5, 2, 0, 0], [9, 9, 8, 6, 5, 5, 3, 2, 2, 0], [9, 9, 8, 6, 5, 3, 2, 2, 2, 0], [9, 9, 8, 6, 5, 3, 0, 0, 0, 0], [9, 9, 8, 6, 5, 2, 2, 2, 0, 0], [9, 9, 8, 6, 5, 0, 0, 0, 0, 0], [9, 9, 8, 6, 3, 3, 2, 0, 0, 0], [9, 9, 8, 6, 3, 2, 0, 0, 0, 0], [9, 9, 8, 5, 5, 5, 3, 3, 3, 2], [9, 9, 8, 5, 5, 3, 3, 2, 2, 0], [9, 9, 8, 5, 5, 3, 2, 2, 0, 0], [9, 9, 8, 5, 3, 2, 2, 2, 0, 0], [9, 9, 8, 3, 3, 2, 2, 2, 2, 0], [9, 9, 6, 6, 6, 6, 5, 3, 3, 2], [9, 9, 6, 6, 6, 6, 4, 4, 3, 3], [9, 9, 6, 6, 6, 6, 3, 2, 2, 0], [9, 9, 6, 6, 6, 6, 3, 1, 1, 0], [9, 9, 6, 6, 6, 4, 3, 3, 1, 0], [9, 9, 6, 6, 6, 4, 3, 1, 0, 0], [9, 9, 6, 6, 5, 5, 5, 5, 5, 3], [9, 9, 6, 6, 5, 5, 5, 5, 5, 0], [9, 9, 6, 6, 5, 5, 3, 3, 0, 0], [9, 9, 6, 6, 5, 5, 3, 2, 2, 2], [9, 9, 6, 6, 5, 3, 3, 3, 2, 0], [9, 9, 6, 6, 4, 4, 4, 3, 1, 1], [9, 9, 6, 6, 4, 4, 4, 1, 1, 0], [9, 9, 6, 6, 4, 3, 1, 0, 0, 0], [9, 9, 6, 6, 3, 3, 3, 2, 2, 0], [9, 9, 6, 6, 3, 3, 2, 2, 0, 0], [9, 9, 6, 6, 3, 3, 1, 1, 0, 0], [9, 9, 6, 5, 5, 5, 2, 2, 0, 0], [9, 9, 6, 5, 5, 3, 2, 2, 2, 0], [9, 9, 6, 4, 4, 4, 3, 3, 1, 1], [9, 9, 6, 4, 4, 4, 3, 1, 1, 0], [9, 9, 6, 4, 4, 3, 1, 1, 1, 0], [9, 9, 6, 3, 3, 3, 3, 1, 1, 0], [9, 9, 6, 3, 3, 2, 2, 0, 0, 0], [9, 9, 5, 5, 5, 5, 3, 3, 3, 2], [9, 9, 5, 5, 5, 5, 3, 2, 0, 0], [9, 9, 5, 3, 3, 3, 2, 2, 2, 2], [9, 9, 4, 3, 3, 3, 1, 1, 1, 1], [9, 9, 4, 3, 3, 1, 1, 1, 1, 0], [9, 8, 8, 8, 8, 6, 6, 6, 5, 0], [9, 8, 8, 8, 8, 6, 5, 5, 5, 2], [9, 8, 8, 8, 8, 5, 3, 3, 3, 3], [9, 8, 8, 8, 6, 6, 5, 5, 3, 3], [9, 8, 8, 8, 6, 6, 5, 5, 3, 0], [9, 8, 8, 8, 6, 6, 5, 3, 2, 0], [9, 8, 8, 8, 6, 5, 5, 0, 0, 0], [9, 8, 8, 8, 6, 5, 3, 3, 3, 2], [9, 8, 8, 8, 6, 5, 3, 3, 2, 0], [9, 8, 8, 8, 6, 5, 3, 2, 0, 0], [9, 8, 8, 8, 5, 5, 5, 5, 2, 0], [9, 8, 8, 8, 5, 5, 3, 3, 3, 3], [9, 8, 8, 8, 5, 5, 3, 3, 3, 0], [9, 8, 8, 8, 5, 5, 2, 2, 2, 0], [9, 8, 8, 8, 5, 3, 3, 2, 0, 0], [9, 8, 8, 8, 3, 3, 3, 2, 2, 0], [9, 8, 8, 6, 6, 6, 6, 3, 3, 0], [9, 8, 8, 6, 6, 6, 5, 5, 2, 0], [9, 8, 8, 6, 6, 6, 5, 3, 2, 2], [9, 8, 8, 6, 6, 6, 3, 3, 0, 0], [9, 8, 8, 6, 6, 5, 5, 3, 3, 2], [9, 8, 8, 6, 6, 5, 5, 3, 2, 0], [9, 8, 8, 6, 6, 5, 3, 3, 2, 2], [9, 8, 8, 6, 6, 5, 3, 2, 2, 0], [9, 8, 8, 6, 6, 5, 2, 2, 0, 0], [9, 8, 8, 6, 6, 3, 3, 3, 3, 0], [9, 8, 8, 6, 6, 3, 3, 2, 2, 2], [9, 8, 8, 6, 6, 2, 2, 2, 0, 0], [9, 8, 8, 6, 5, 5, 5, 5, 2, 2], [9, 8, 8, 6, 5, 5, 5, 3, 0, 0], [9, 8, 8, 6, 5, 5, 3, 3, 2, 0], [9, 8, 8, 6, 5, 5, 2, 2, 2, 2], [9, 8, 8, 6, 5, 5, 2, 0, 0, 0], [9, 8, 8, 6, 5, 3, 3, 2, 2, 0], [9, 8, 8, 6, 5, 2, 2, 2, 2, 2], [9, 8, 8, 6, 5, 2, 2, 0, 0, 0], [9, 8, 8, 5, 5, 3, 3, 3, 3, 2], [9, 8, 8, 5, 5, 3, 3, 3, 2, 0], [9, 8, 8, 5, 5, 2, 2, 2, 2, 0], [9, 8, 8, 5, 3, 3, 2, 2, 0, 0], [9, 8, 8, 5, 3, 2, 2, 0, 0, 0], [9, 8, 8, 3, 3, 2, 2, 2, 0, 0], [9, 8, 6, 6, 6, 6, 6, 5, 3, 0], [9, 8, 6, 6, 6, 6, 5, 3, 3, 0], [9, 8, 6, 6, 6, 6, 3, 3, 2, 0], [9, 8, 6, 6, 6, 5, 5, 5, 2, 0], [9, 8, 6, 6, 6, 5, 3, 3, 3, 3], [9, 8, 6, 6, 6, 5, 3, 3, 3, 0], [9, 8, 6, 6, 5, 5, 5, 2, 0, 0], [9, 8, 6, 6, 5, 5, 3, 3, 2, 2], [9, 8, 6, 6, 5, 5, 3, 2, 2, 0], [9, 8, 6, 6, 5, 3, 3, 3, 3, 0], [9, 8, 6, 6, 5, 3, 3, 3, 0, 0], [9, 8, 6, 6, 3, 3, 2, 0, 0, 0], [9, 8, 6, 5, 5, 5, 5, 0, 0, 0], [9, 8, 6, 5, 5, 5, 3, 3, 3, 2], [9, 8, 6, 5, 5, 5, 2, 2, 2, 2], [9, 8, 6, 5, 5, 3, 3, 2, 2, 0], [9, 8, 6, 5, 5, 3, 2, 2, 0, 0], [9, 8, 6, 5, 3, 3, 2, 2, 2, 0], [9, 8, 6, 5, 3, 3, 0, 0, 0, 0], [9, 8, 6, 5, 3, 2, 2, 2, 0, 0], [9, 8, 6, 5, 2, 2, 2, 2, 2, 2], [9, 8, 5, 5, 5, 3, 3, 3, 2, 0], [9, 8, 5, 5, 3, 3, 2, 2, 0, 0], [9, 8, 5, 3, 3, 2, 2, 2, 0, 0], [9, 6, 6, 6, 6, 5, 3, 3, 2, 0], [9, 6, 6, 6, 6, 4, 4, 3, 3, 0], [9, 6, 6, 6, 5, 5, 3, 3, 0, 0], [9, 6, 6, 6, 5, 2, 2, 2, 2, 0], [9, 6, 6, 6, 4, 4, 4, 3, 1, 1], [9, 6, 6, 6, 4, 4, 3, 3, 0, 0], [9, 6, 6, 5, 3, 3, 3, 2, 0, 0], [9, 6, 6, 4, 4, 4, 4, 1, 0, 0], [9, 6, 6, 4, 4, 3, 1, 1, 1, 0], [9, 6, 6, 4, 3, 3, 3, 3, 1, 0], [9, 6, 6, 4, 3, 3, 3, 1, 0, 0], [9, 6, 6, 4, 3, 3, 1, 0, 0, 0], [9, 6, 6, 3, 3, 3, 2, 2, 0, 0], [9, 6, 6, 3, 1, 1, 0, 0, 0, 0], [9, 6, 5, 5, 5, 5, 3, 2, 0, 0], [9, 6, 5, 5, 3, 3, 3, 3, 3, 0], [9, 6, 5, 5, 3, 3, 2, 2, 2, 0], [9, 6, 5, 5, 3, 2, 2, 2, 0, 0], [9, 6, 5, 3, 3, 3, 3, 2, 0, 0], [9, 6, 5, 3, 3, 2, 2, 2, 2, 0], [9, 6, 4, 4, 4, 4, 3, 1, 0, 0], [9, 6, 4, 4, 3, 3, 3, 3, 0, 0], [9, 6, 4, 3, 3, 1, 1, 1, 1, 0], [9, 5, 5, 3, 3, 3, 3, 2, 2, 2], [9, 4, 4, 4, 3, 3, 3, 1, 1, 0], [9, 4, 4, 4, 3, 3, 1, 1, 0, 0], [9, 4, 4, 3, 3, 1, 1, 1, 0, 0], [8, 8, 8, 8, 8, 3, 3, 0, 0, 0], [8, 8, 8, 8, 6, 5, 5, 2, 2, 0], [8, 8, 8, 8, 5, 3, 0, 0, 0, 0], [8, 8, 8, 8, 3, 3, 3, 2, 0, 0], [8, 8, 8, 8, 3, 2, 2, 2, 2, 0], [8, 8, 8, 6, 6, 6, 5, 3, 2, 0], [8, 8, 8, 6, 6, 6, 3, 2, 2, 0], [8, 8, 8, 6, 6, 5, 3, 3, 2, 0], [8, 8, 8, 6, 6, 3, 2, 2, 0, 0], [8, 8, 8, 6, 5, 5, 5, 5, 2, 0], [8, 8, 8, 6, 5, 5, 3, 3, 3, 3], [8, 8, 8, 6, 5, 5, 3, 0, 0, 0], [8, 8, 8, 6, 5, 3, 3, 3, 3, 2], [8, 8, 8, 6, 3, 2, 2, 0, 0, 0], [8, 8, 8, 5, 5, 3, 3, 0, 0, 0], [8, 8, 8, 5, 3, 2, 2, 2, 2, 0], [8, 8, 6, 6, 6, 3, 3, 0, 0, 0], [8, 8, 6, 6, 5, 5, 3, 2, 0, 0], [8, 8, 6, 6, 5, 5, 2, 0, 0, 0], [8, 8, 6, 6, 3, 3, 3, 0, 0, 0], [8, 8, 6, 5, 5, 5, 5, 5, 2, 0], [8, 8, 6, 5, 5, 5, 3, 3, 0, 0], [8, 8, 6, 5, 5, 3, 3, 2, 0, 0], [8, 8, 6, 5, 5, 3, 2, 2, 2, 2], [8, 8, 6, 3, 3, 3, 2, 2, 2, 0], [8, 8, 5, 5, 3, 3, 3, 3, 2, 0], [8, 8, 5, 5, 3, 3, 2, 0, 0, 0], [8, 8, 5, 3, 3, 3, 2, 2, 0, 0], [8, 8, 3, 2, 2, 2, 0, 0, 0, 0], [8, 6, 6, 6, 6, 5, 5, 5, 5, 0], [8, 6, 6, 6, 6, 5, 3, 3, 0, 0], [8, 6, 6, 6, 5, 5, 3, 3, 2, 2], [8, 6, 6, 5, 5, 5, 3, 3, 2, 0], [8, 6, 6, 5, 5, 3, 3, 3, 2, 2], [8, 6, 6, 5, 5, 3, 3, 2, 2, 0], [8, 6, 6, 5, 5, 2, 2, 0, 0, 0], [8, 6, 6, 5, 3, 3, 3, 2, 2, 2], [8, 6, 6, 5, 3, 3, 2, 2, 2, 0], [8, 6, 6, 5, 3, 3, 0, 0, 0, 0], [8, 6, 5, 5, 5, 5, 3, 0, 0, 0], [8, 6, 5, 5, 3, 2, 2, 0, 0, 0], [8, 6, 3, 3, 3, 3, 3, 3, 3, 2], [8, 5, 5, 5, 5, 5, 3, 2, 2, 0], [8, 5, 5, 5, 3, 3, 2, 0, 0, 0], [8, 5, 5, 3, 3, 3, 2, 2, 0, 0], [8, 5, 5, 3, 2, 2, 0, 0, 0, 0], [8, 5, 3, 3, 2, 2, 2, 0, 0, 0], [6, 6, 6, 6, 5, 3, 3, 2, 0, 0], [6, 6, 6, 6, 4, 4, 4, 4, 1, 0], [6, 6, 6, 6, 3, 3, 1, 1, 0, 0], [6, 6, 6, 5, 5, 5, 5, 3, 2, 0], [6, 6, 6, 5, 5, 5, 3, 3, 2, 2], [6, 6, 6, 5, 3, 3, 2, 0, 0, 0], [6, 6, 6, 4, 4, 4, 4, 3, 1, 0], [6, 6, 6, 4, 4, 4, 3, 3, 1, 1], [6, 6, 6, 4, 4, 3, 3, 3, 3, 0], [6, 6, 6, 4, 4, 3, 1, 1, 1, 0], [6, 6, 6, 3, 1, 1, 0, 0, 0, 0], [6, 6, 5, 5, 5, 5, 2, 0, 0, 0], [6, 6, 5, 3, 3, 2, 0, 0, 0, 0], [6, 6, 3, 3, 3, 3, 1, 1, 0, 0], [6, 5, 5, 3, 3, 3, 2, 2, 2, 0], [6, 5, 3, 2, 2, 2, 2, 0, 0, 0], [6, 4, 4, 4, 4, 1, 0, 0, 0, 0], [6, 3, 3, 3, 3, 2, 2, 0, 0, 0], [6, 3, 3, 3, 3, 1, 1, 0, 0, 0], [6, 3, 3, 2, 2, 2, 2, 2, 0, 0], [5, 5, 5, 3, 3, 3, 2, 2, 0, 0], [5, 5, 3, 3, 3, 2, 2, 2, 0, 0]
].collect {|s| s.sort}.uniq.sort


def subprimes(digits)
  digits.collect.with_index do |d,idx|
    subset = digits.dup
    subset.delete_at(idx)
    subset.join.to_i.prime?
  end
end


puts "testing #{@digits_sets.count} digit sets"

@winners = []


@digits_sets.each.with_index do |ds,idx|

  p idx
  @counter = 0
  max = ds.count

  # f = File.open("#{ds.join}.csv", 'w')

  ds.permutation.each do |p|
    @counter += 1

    p_num = p.join.to_i
    if p_num.to_s.length==max
      p_p = p_num.prime?

      if !(@winners.include?(p_num)) && p_p

        babies = subprimes(p)
        hits = babies.count(true)
        if hits >= max
          @winners << p_num
          puts "#{idx},#{@counter},#{p_num},#{hits}"
          # f.puts "#{@counter},#{p_num},#{hits}"
        end
      end
    end
  end

  # f.close
end

puts @winners.inspect

puts "done"
