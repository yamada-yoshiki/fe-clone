# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |i|
  Question.create(title: "問題#{i+1}")
end

Question.all.each do |q|
  q.question_contents.create!(
    sentence: "#{q.title}の問題文でーす。",
    display_order: 0
  )
  4.times do |i|
    q.question_options.create!(
      text: "選択肢#{i}",
      display_order: i + 1
    )
  end
end
