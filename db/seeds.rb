# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
if Blogger.find_by(gmail: 'viswanath.aparna@gmail.com').nil?
	blogger1 = Blogger.create(gmail: 'viswanath.aparna@gmail.com', password: '123aparna987')
end

if Blogger.find_by(gmail: 'aparna.v@rubyians.com').nil?
blogger2 = Blogger.create(gmail: 'aparna.v@rubyians.com', password: '456aparna987')
end

if Blogger.find_by(gmail: 'aparnaviswanath@hotmail.com').nil?
blogger3 = Blogger.create(gmail: 'aparnaviswanath@hotmail.com', password: '789aparna987')
end

if Blogpost.find_by(blog_post: 'Tiger').nil?
blogpost1 = blogger1.blogposts.create(blog_post: 'Tiger', body_content: 'Blog post on tigers. Beauty in its looks. ')
end

if Blogpost.find_by(blog_post: 'Pegion').nil?
blogpost4 = blogger1.blogposts.create(blog_post: 'Pegion', body_content: 'Blog post on Pegions. Beauty in its looks. ')
end

if Blogpost.find_by(blog_post: 'Lion').nil?
blogpost2 = blogger2.blogposts.create(blog_post: 'Lion', body_content: 'Blog post on lion. Anger in its looks')
end

if Blogpost.find_by(blog_post: 'Leopard').nil?
blogpost3 = blogger3.blogposts.create(blog_post: 'Leopard', body_content: 'Blog post on leopard. Beware of leapords')
end

if Comment.find_by(suggestion: 'Good blog. Continue writing').nil?
comment1 = Comment.create(suggestion: 'Good blog. Continue writing', blogger_id: blogger1.id, blogpost_id: blogpost1.id)
end

if Comment.find_by(suggestion: 'Please collect more info on lions and blog').nil?
comment2 = Comment.create(suggestion: 'Please collect more info on lions and blog', blogger_id: blogger2.id, blogpost_id: blogpost2.id)
end

if Comment.find_by(suggestion: 'Leopards are hard to find').nil?
comment3 = Comment.create(suggestion: 'Leopards are hard to find', blogger_id: blogger3.id, blogpost_id: blogpost3.id)
end


