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

User.find_or_create_by(id: 1) do |admin|
    admin.email = "user@example.com"
    admin.password = "password"
end

Sspn.find_or_create_by(id: 99) do |sspn|
    sspn.amount = 0
    sspn.number = "特別支出なし"
    sspn.grant = 1
    sspn.ai = "SKN"
    sspn.advance = 1
    sspn.item = ""
    sspn.reason = ""
    sspn.season = ""
    sspn.remarks = "特支なし用"
end

#以降はデモ用のデータ

User.find_or_create_by(id: 2) do |admin|
    admin.email = "user2@example.com"
    admin.password = "password"
end

User.find_or_create_by(id: 3) do |admin|
    admin.email = "user3@example.com"
    admin.password = "password"
end

Sspn.find_or_create_by(id: 1) do |sspn|
    sspn.amount = 300000
    sspn.number = "20220130-SKN-001"
    sspn.grant = 1
    sspn.ai = "SKN"
    sspn.advance = 1
    sspn.item = "交通費"
    sspn.reason = "2022年1月"
    sspn.season = "委員の移動費のため"
    sspn.remarks = "テスト用データ"
end

Sspn.find_or_create_by(id: 2) do |sspn|
    sspn.amount = 10000
    sspn.number = "20220130-SKN-002"
    sspn.grant = 1
    sspn.ai = "SKN"
    sspn.advance = 1
    sspn.item = "贈答品日"
    sspn.reason = "2022年1月"
    sspn.season = "印刷所へのお礼のため"
    sspn.remarks = "テスト用データ"
end
