# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



# USER SEED DATA
emily = User.create(username: "Emily", email: "e@email.com", password_digest: "asdf")

# TIMELINE SEED DATA
beatles_albums = Timeline.create(title: "Beatles Albums", description: "A timeline showing the Beatles' discography", user_id: emily.id)

# EVENT SEED DATA
hard_days_night = Event.create(year: 1963, title: "Hard Days Night", description: "Beatles release their fan-favorite to much acclaim", timeline_id: 1)
revolver = Event.create(year: 1967, title: "Revolver", description: "Another fan favorite released", timeline_id: beatles_albums.id)