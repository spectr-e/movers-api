# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Box.create(range: "1-10", cost_to_move_boxes: 5000)
Box.create(range: "11-20", cost_to_move_boxes: 7000)
Box.create(range: "20-30", cost_to_move_boxes: 12000)
Box.create(range: "30-50", cost_to_move_boxes: 20000)
Box.create(range: "50+", cost_to_move_boxes: 30000)
