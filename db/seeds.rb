require 'csv'
require 'awesome_print'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'brain.csv'))
csv = CSV.parse(csv_text, headers: true, encoding: 'iso-8859-1:utf-8')

csv.each do |row|
  t = Brain.new
  t.ProductName = row["ProductName"]
  t.CSF = row["CSF"]
  t.CompanyName = row["CompanyName"]
  t.BrandName = row["BrandName"]
  t.PrimaryCategory = row["PrimaryCategory"]
  t.SubCategory = row["SubCategory"]
  t.ChemicalName = row["ChemicalName"]
  t.save
end

puts "There are now #{Brain.count} rows in the database"
