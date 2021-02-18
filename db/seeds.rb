# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

    user = User.create!(display_name: 'john', password: 'securepassword123', email: 'dave@123.com', dob: '12/05/1999')
    container = user.containers.create!(title: 'Edisya', description: 'I wanna be the very best')
    category = container.categories.create!(name: 'Cities', description: 'locations within the world where many people gather')
    identifier = category.identifiers.create!(title: 'caius')
    information = identifier.information.create!(infoTitle: 'Backstory', info: 'was raised by dragons')