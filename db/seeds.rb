puts "Seeding Data. Please Wait..."

acc1 = Account.create(
    number: 79076,
    name: "KCB Cub Account",
    amount: 100000,
    is_active: true,
    user_full_name: "Douglas"
)

acc2 = Account.create(
    number: 79077,
    name: "KCB Student Account",
    amount: 1000,
    is_active: true,
    user_full_name: "Comrade"
)

puts "Completed seeding data!"