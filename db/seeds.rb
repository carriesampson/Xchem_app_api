require 'csv'
require 'awesome_print'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'brain.csv'))

csv = CSV.parse(csv_text, headers: true, encoding: 'iso-8859-1:utf-8')

csv.each do |row|
  t = Brain.new
  t.CDPHId = row["CDPHId"]
  t.ProductName = row["ProductName"]
  t.CSFId = row["CSFId"]
  t.CSF = row["CSF"]
  t.CompanyId = row["CompanyId"]
  t.CompanyName = row["CompanyName"]
  t.PrimaryCategoryId = row["PrimaryCategoryId"]
  t.PrimaryCategory = row["PrimaryCategory"]
  t.SubCategoryId = row["SubCategoryId"]
  t.SubCategory = row["SubCategory"]
  t.CasId = row["CasId"]
  t.CasNumber = row["CasNumber"]
  t.ChemicalId = row["ChemicalId"]
  t.ChemicalName = row["ChemicalName"]
  t.InitialDateReported = row["InitialDateReported"]
  t.MostRecentDateReported = row["MostRecentDateReported"]
  t.DiscontinuedDate = row["DiscontinuedDate"]
  t.ChemicalCreatedAt = row["ChemicalCreatedAt"]
  t.ChemicalUpdatedAt = row["ChemicalUpdatedAt"]
  t.ChemicalDateRemoved = row["ChemicalDateRemoved"]
  t.ChemicalCount = row["ChemicalCount"]
  t.save
end

puts "There are now #{Brain.count} rows in the database"
