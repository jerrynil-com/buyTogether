# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |num|
  Store.create name: "測試 #{num + 1} 號店",
        description: "這是第 #{num + 1} 家店",
        phone: "1234567#{num+1}",
        address: "羅斯福路 #{num+1} 段"
end




