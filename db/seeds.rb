# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Rate.destroy_all
Rate.create([
  {loan_type: "Conforming", length: "30 Year Fixed", rate: "1.39", apr: "1.47", description: "insert text blurb here"},
  {loan_type: "High Balance Conforming", length: "5 Year Arm", rate: "2.58", apr: "3.12", description: "insert text blurb here"},
  {loan_type: "Jumbo", length: "10 Year Arm", rate: "3.22", apr: "3.43", description: "insert text blurb here"}
])
