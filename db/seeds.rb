
100.times do
  Detail.create(
            name: Faker::Name.name,
            recipe: Faker::Food.description,
            source: "email"
  )
end
 100.times do
   Detail.create(
       name: Faker::Name.name,
       recipe: Faker::Food.description,
       source: "webpost"
   )
 end