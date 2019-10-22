# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)

# # 1.- Descargar  un archivo desde el código
# # require 'csv'

# # CSV.read(Rails.root.join('lib/restaurantes.csv'))

require 'csv'



CSV.foreach(Rails.root.join('lib/restaurantes.csv'), headers: true) do |row|
    # puts 'hola'
    Restaurant.create({

    uuid:   row[0],
    rating: row[1],
    name:   row[2],
    site:   row[3],
    email:  row[4],
    phone:  row[5],
    street: row[6],
    city:   row[7],
    state:  row[8],
    lat:    row[9],
    lng:    row[10]
    })
  end

# # 2.- Leer el archivo.csv 

# # 3.- Traducir el parseado a modelos de rails y pasarlos a la DB

