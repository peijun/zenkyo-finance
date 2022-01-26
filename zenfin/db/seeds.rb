# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Admin.find_or_create_by(id: 1) do |admin|
    admin.email = "example@example.com"
    admin.password = "password"
end

Sspn.find_or_create_by(id: 1) do |sspn|
    sspn.amount = 50000
    sspn.number = "20210130-SKN-001"
    sspn.grant = 1
    sspn.ai = "SKN"
    sspn.advance = 1
    sspn.item = "贈答品日"
    sspn.reason = "印刷所への移動費として"
    sspn.season = "2022年2月"
    sspn.remarks = "これはテストです"
end