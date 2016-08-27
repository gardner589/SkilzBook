# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Skill.destroy_all
Build.destroy_all
tekken = Skill.create(game: "Tekken 6")
kaz = Build.create(name: "Kazuya" ,details: "I'm pretty good with Kaz. Check out my links",img_url:"http://tekken6-official.eu/templates/1/medias/img/photos/characters/hd//kazuya.png", skill: tekken)
king = Build.create(name: "King", details: "My King is pretty good, he'll keep you honest", img_url:"http://tekken6-official.eu/templates/1/medias/img/photos/characters/hd//king.png", skill: tekken)

injustice = Skill.create(game: "Injustice")
zod = Build.create(name: "Zod", details: "Zod is 100% NAUGHSTY", img_url:"http://orig05.deviantart.net/25fe/f/2015/225/8/f/injustice__gau__ios____zod__render_2__by_wyruzzah-d95jcej.png", skill: injustice)
joker = Build.create(name: "The Joker", details: "I can pull off some pretty sick combos with Joker", img_url:"http://vignette3.wikia.nocookie.net/injusticegodsamongus/images/6/65/Joker.jpg/revision/latest?cb=20130708042006", skill: injustice)
