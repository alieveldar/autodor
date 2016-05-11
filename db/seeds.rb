# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Station.destroy_all
Report.destroy_all
Station.create!(name:'Аделя Кутуя номер 31', master:'Мифтахов')
Station.create!(name:'Родиина номер 15', master:'Мифтахов')
Station.create!(name:'Проспект победы номер 9', master:'Мифтахов')
Station.create!(name:'Амирхана номер 13', master:'Мифтахов')
Station.create!(name:'Воровского 38', master:'Мифтахов')
Station.create!(name:'Клары Цеткин 39', master:'Мифтахов')