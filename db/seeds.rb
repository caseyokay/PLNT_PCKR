# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "json"
require 'httparty'

Plant.destroy_all

response = HTTParty.get('https://trefle.io/api/v1/plants',query: {"token": "a4_zn3CJvpfNeaaTRNhiXFgPDN0kYFItZzPT-KtRAJg"})

ruby_hash = JSON.parse(response.body)

ruby_hash["data"].each do |plant|
        Plant.create(scientific_name: plant["scientific_name"], height: rand(0..50), light: rand(0..10), image_url: plant["image_url"])
    end

