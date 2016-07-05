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
kaz = Build.create(name: "Kazuya" ,details: "I'm pretty good with Kaz. Check out my links", skill: tekken)
