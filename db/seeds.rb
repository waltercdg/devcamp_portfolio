# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
	)
end

puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title: "My blog post #{blog}",
		body: "There is no hate, only joy | For you are beloved by the goddess | Hero of the dawn, Healer of worlds | Dreams of the morrow hath the shattered soul | Pride is lost | Wings stripped away, the end is nigh",
		topic_id: Topic.last.id
	)
end

puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end

puts "5 skills created"

8.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "Ruby on Rails",
		body: "There is no hate, only joy | For you are beloved by the goddess | Hero of the dawn, Healer of worlds | Dreams of the morrow hath the shattered soul | Pride is lost | Wings stripped away, the end is nigh",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

1.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title #{portfolio_item}",
		subtitle: "Angular",
		body: "There is no hate, only joy | For you are beloved by the goddess | Hero of the dawn, Healer of worlds | Dreams of the morrow hath the shattered soul | Pride is lost | Wings stripped away, the end is nigh",
		main_image: "http://placehold.it/600x400",
		thumb_image: "http://placehold.it/350x200"
	)
end

puts "9 portfolio items created"