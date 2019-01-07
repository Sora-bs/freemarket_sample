# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"

# CSV.foreach('db/category.csv') do |record|
#   Category.create(name: record[0], parent_id: record[1])
# end

# CSV.foreach('db/brand.csv') do |record|
#   Brand.create(name: record[0], brand_group_id: record[1])
# end

CSV.foreach('db/brand_group.csv') do |record|
  BrandGroup.create(name: record[0])
end
