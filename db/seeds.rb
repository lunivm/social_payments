# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

all_streets = JSON.parse(File.read(Rails.root.join('lib', 'seeds', 'streets-if.json')))
all_streets.each do |street|
  Street.create(
    name: street['name']
  )
end

all_banks = JSON.parse(File.read(Rails.root.join('lib', 'seeds', 'nbu_bank_info.json')))
all_banks.each do |bank|
  Bank.create(
    name: bank['SHORTNAME'],
    edrpou: bank['KOD_EDRPOU'],
    mfo: bank['MFO']
  ) if bank['TYP'] == "0"
end