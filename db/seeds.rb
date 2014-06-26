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

post_attrs.each do |attrs|
  Post.find_or_create_by!(attrs)
end
