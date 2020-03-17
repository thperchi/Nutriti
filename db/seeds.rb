# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
Food.destroy_all

csv_text = File.read(Rails.root.join('lib', 'seeds', 'foods_nutriti.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'ISO-8859-1')
csv.each do |row|
  food = Food.new
  food.alim_code = row['alim_code']
  food.alim_name = row['alim_name']
  food.alim_group = row['alim_group']
  food.alim_sub_group = row['alim_sub_group']
  food.alim_sub_sub_group = row['alim_sub_sub_group']
  food.kcalfor100g = row['kcalfor100g']
  food.proteinfor100g = row['proteinfor100g']
  food.carbohydratefor100g = row['carbohydratefor100g']
  food.lipidfor100g = row['lipidfor100g']
  food.sugarfor100g = row['sugarfor100g']
  food.cholesterolfor100g = row['cholesterolfor100g']
  food.saltfor100g = row['saltfor100g']
  food.save

end

puts "There are now #{Food.count} foods in database"