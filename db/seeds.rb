# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

for i in 1..50 do 
	user = User.new 
	user.name = Faker::Name.name 
	user.email = Faker::Internet.email

	if user.save 
		for ii in 1..50 do
		article = Article.new 
		article.title = Faker::OnePiece.sea
		article.content = Faker::OnePiece.akuma_no_mi 
		article.user = user

		if article.save
			for iii in 1..10 do 
				comment = Comment.new 
				comment.message = Faker::OnePiece.quote 
				comment.article = article
				comment.user = user
				if comment.save 
					p "save" 
				else 
					p comment.errors
				end
		end
		else 
			p article.errors
		end
	end 
	else 
		p user.errors
	end
end


