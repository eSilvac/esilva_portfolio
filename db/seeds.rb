# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Page.create!(name:"Expensify", url:"https://boiling-dusk-99769.herokuapp.com/", description:"Web​ app​ designed​ to​ help​ users​ manage​ their​ expenses​ in a easy​ and​ fast​ way.", languages: ["Ruby On Rails", "HTML5", "CSS3", "jQuery"], screenshots: 3 )
Page.create!(name:"Kleos Industry", url:"http://kleos.com.co/", description:"Local​ company​ dedicated​ to the​ ​distribution​ ​and​ ​assembly​ ​of​ ​specialized​ car​ ​parts.", languages: ["HTML5", "CSS3"], screenshots: 2 )
Page.create!(name:"Flow OverStack", url:"https://warm-plains-34114.herokuapp.com/", description:"Stack​ Overflow​ clone.", languages: ["Ruby On Rails", "HTML5", "CSS3", "JavaScript"], screenshots: 3)