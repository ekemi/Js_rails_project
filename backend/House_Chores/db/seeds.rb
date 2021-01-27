# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

lee = House.create(name:'Lee', members:'Peeze  Pius Paron Paor Pap Panthy')
kee= House.create(name:'Kee', members:"Jeff, Ali, Jan, Tius Lea")

cooking = Chore.create(name: 'cooking', status:"Incomplete", house:lee)
sweeping = Chore.create(name:"sweeping", status:"Incomplete", house:lee)