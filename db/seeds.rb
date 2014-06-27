user = User.find_or_initialize_by(email: 'mrg@catsofinstagram.com')
user.password = 'troutsalmon'
user.save!

post_attrs = [
  {
    title: 'Heartbeats',
    body: %{I believe every human has a finite number of heartbeats. I don\'t
            intend to waste any of mine}
  }, {
    title: 'Pilot Health',
    body: %{You know, being a test pilot isn't always the healthiest business
            in the world.}
  }, {
    title: 'Tiny Pea',
    body: %{It suddenly struck me that that tiny pea, pretty and blue, was the
            Earth. I put up my thumb and shut one eye, and my thumb blotted out
            the planet Earth. I didn't feel like a giant. I felt very, very
            small.}
  }, {
    title: 'Pilot Health',
    body: %{To be the first to enter the cosmos, to engage, single-handed, in an
            unprecedented duel with nature—could one dream of anything more?}
  }
]

10000.times do |n|
  post = user.posts.create!(post_attrs.sample)
  puts "#{post.title} was created!"

  rand(30).times do |i|
    ohs = 'o' * i
    post.comments.create!(body: "This post is s#{ohs} awesome!")
  end
end
