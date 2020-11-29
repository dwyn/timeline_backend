# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
Timeline.destroy_all
Event.destroy_all

# USER SEED DATA
# emily = User.create(username: "Emily", email: "e@email.com", password_digest: "asdf")


# TIMELINE SEED DATA
beatles_albums = Timeline.create(title: "Beatles Albums", description: "A timeline showing the Beatles' discography")
emily_life = Timeline.create(title: "Emily's Life...So Far", description: "A timeline of major events in Emily's life")


# EVENT SEED DATA
please_please_me = Event.create(year: 1963, title: "Please Please Me", description: "First album with Apple Records", timeline_id: beatles_albums.id)
with_the_beatles = Event.create(year: 1963, title: "With the Beatles", description: "Another one", timeline_id: beatles_albums.id)
introducting_the_beatles = Event.create(year: 1964, title: "Introducing...The Beatles", description: "Another album released to fan acclaim", timeline_id: beatles_albums.id)
meet_the_beatles = Event.create(year: 1964, title: "Meet the Beatles", description: "First record with Capitol Records", timeline_id: beatles_albums.id)
hard_days_night = Event.create(year: 1964, title: "Hard Days Night", description: "Beatles release their fan-favorite to much acclaim", timeline_id: beatles_albums.id)
revolver = Event.create(year: 1967, title: "Revolver", description: "Another fan favorite released", timeline_id: beatles_albums.id)

birth = Event.create(year: 1979, title: "Birth", description: "Emily is born", timeline_id: emily_life.id)
kindergarten = Event.create(year: 1984, title: "First Day of School", description: "Emily attends her first day of kindergarten", timeline_id: emily_life.id)
hs_grad = Event.create(year: 1997, title: "Graduates from HS", description: "Emily graduates from high school and starts college", timeline_id: emily_life.id)
marriage = Event.create(year: 2015, title: "Wedding Day", description: "Emily marries Irena", timeline_id: emily_life.id)