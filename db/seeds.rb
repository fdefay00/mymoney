Category.create!([
  {name: "Automotive, Home & Games", description: "Awesome Silk Bench"},
  {name: "Beauty, Music & Automotive", description: "Ergonomic Paper Bench"},
  {name: "Garden, Health, Books, Industrial & Home", description: "Durable Iron Clock"},
  {name: "Loans", description: "All loans"},
  {name: "Credit Cards", description: "Credit Card Payment"},
  {name: "Savings", description: "all savings"},
  {name: "Rent", description: "Rent"}
])
Debt.create!([
  {category: "Credit Cards", sub_category: "Credit Cards", name: "Amex", is_asset: false, pay_from: "Bank Of America", deleted_at: nil, fix_amount: nil, schedule: nil, payment_start_date: nil, autopay: false},
  {category: "Loans", sub_category: "Student Loans", name: "Wolff Academy", is_asset: false, pay_from: "Chase", deleted_at: nil, fix_amount: nil, schedule: nil, payment_start_date: nil, autopay: false},
  {category: "Loans", sub_category: "Car Loans", name: "Vw", is_asset: false, pay_from: "Bank Of America", deleted_at: nil, fix_amount: "186.19", schedule: "Bi-Weekly", payment_start_date: "2015-09-11", autopay: true},
  {category: "Savings", sub_category: "Savings", name: "Emergency Fundings", is_asset: true, pay_from: "Bank Of America", deleted_at: "2015-11-26 20:34:44", fix_amount: nil, schedule: nil, payment_start_date: nil, autopay: false},
  {category: "Savings", sub_category: "Savings", name: "Emergency Fundings", is_asset: true, pay_from: "Bank Of America", deleted_at: "2015-11-26 21:30:01", fix_amount: nil, schedule: nil, payment_start_date: nil, autopay: false},
  {category: "Savings", sub_category: "Savings", name: "Emergency Fundings", is_asset: true, pay_from: "Bank Of America", deleted_at: nil, fix_amount: nil, schedule: nil, payment_start_date: nil, autopay: false},
  {category: "Bill", sub_category: "Bill", name: "Rent", is_asset: false, pay_from: "Bank Of America", deleted_at: nil, fix_amount: "1550.0", schedule: "Monthly", payment_start_date: nil, autopay: false},
  {category: "Loans", sub_category: "Phone", name: "Sams Phone", is_asset: false, pay_from: "Bank Of America", deleted_at: nil, fix_amount: nil, schedule: "Bi-Weekly", payment_start_date: nil, autopay: false}
])
Budget.create!([
  {category_id: 1, budget_month: "2015-06-01", amount: "508.47"},
  {category_id: 2, budget_month: "2015-06-01", amount: "120.96"},
  {category_id: 3, budget_month: "2015-06-01", amount: "21.33"},
  {category_id: 4, budget_month: "2015-06-01", amount: "271.92"},
  {category_id: 5, budget_month: "2015-06-01", amount: "87.8"},
  {category_id: 1, budget_month: "2015-07-01", amount: "489.44"},
  {category_id: 2, budget_month: "2015-07-01", amount: "103.14"},
  {category_id: 3, budget_month: "2015-07-01", amount: "168.02"},
  {category_id: 4, budget_month: "2015-07-01", amount: "272.79"},
  {category_id: 5, budget_month: "2015-07-01", amount: "191.83"},
  {category_id: 1, budget_month: "2015-08-01", amount: "391.66"},
  {category_id: 2, budget_month: "2015-08-01", amount: "153.62"},
  {category_id: 3, budget_month: "2015-08-01", amount: "184.22"},
  {category_id: 4, budget_month: "2015-08-01", amount: "262.43"},
  {category_id: 5, budget_month: "2015-08-01", amount: "150.1"},
  {category_id: 1, budget_month: "2015-09-01", amount: "339.62"},
  {category_id: 2, budget_month: "2015-09-01", amount: "136.04"},
  {category_id: 3, budget_month: "2015-09-01", amount: "193.34"},
  {category_id: 4, budget_month: "2015-09-01", amount: "277.6"},
  {category_id: 5, budget_month: "2015-09-01", amount: "152.07"},
  {category_id: 6, budget_month: "2015-06-01", amount: "0.0"},
  {category_id: 6, budget_month: "2015-07-01", amount: "0.0"},
  {category_id: 6, budget_month: "2015-08-01", amount: "0.0"},
  {category_id: 6, budget_month: "2015-09-01", amount: "850.0"},
  {category_id: 1, budget_month: "2015-10-01", amount: "298.97"},
  {category_id: 2, budget_month: "2015-10-01", amount: "162.68"},
  {category_id: 3, budget_month: "2015-10-01", amount: "166.95"},
  {category_id: 4, budget_month: "2015-10-01", amount: "283.9"},
  {category_id: 5, budget_month: "2015-10-01", amount: "130.32"},
  {category_id: 6, budget_month: "2015-10-01", amount: "328.0"},
  {category_id: 1, budget_month: "2015-11-01", amount: "298.97"},
  {category_id: 2, budget_month: "2015-11-01", amount: "162.68"},
  {category_id: 3, budget_month: "2015-11-01", amount: "166.95"},
  {category_id: 4, budget_month: "2015-11-01", amount: "283.9"},
  {category_id: 5, budget_month: "2015-11-01", amount: "130.32"},
  {category_id: 6, budget_month: "2015-11-01", amount: "328.0"},
  {category_id: 7, budget_month: "2015-06-01", amount: "0.0"},
  {category_id: 7, budget_month: "2015-07-01", amount: "0.0"},
  {category_id: 7, budget_month: "2015-08-01", amount: "0.0"},
  {category_id: 7, budget_month: "2015-09-01", amount: "0.0"},
  {category_id: 7, budget_month: "2015-10-01", amount: "0.0"},
  {category_id: 7, budget_month: "2015-11-01", amount: "0.0"},
  {category_id: 1, budget_month: "2015-12-01", amount: "10.0"},
  {category_id: 2, budget_month: "2015-12-01", amount: "0.0"}
])
DebtBalance.create!([
  {debt_id: 1, due_date: "2015-09-15", balance: "1000.0", payment_start_date: "2015-08-16", target_balance: "0.0"},
  {debt_id: 2, due_date: "2019-01-01", balance: "4400.0", payment_start_date: "2015-04-01", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-08-15", balance: "500.0", payment_start_date: "2015-07-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-10-15", balance: "1000.0", payment_start_date: "2015-09-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-11-15", balance: "500.0", payment_start_date: "2015-10-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-01-15", balance: "3020.12", payment_start_date: "2014-12-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-02-15", balance: "2021.96", payment_start_date: "2015-01-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-03-15", balance: "2156.72", payment_start_date: "2015-02-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-04-15", balance: "2524.68", payment_start_date: "2015-03-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-05-15", balance: "2779.96", payment_start_date: "2015-04-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-06-15", balance: "3447.21", payment_start_date: "2015-05-16", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-07-15", balance: "3852.46", payment_start_date: "2015-06-16", target_balance: "0.0"},
  {debt_id: 4, due_date: "2018-12-01", balance: "14000.0", payment_start_date: "2014-06-01", target_balance: "0.0"},
  {debt_id: 8, due_date: "2017-02-01", balance: "26350.0", payment_start_date: "2015-10-01", target_balance: "0.0"},
  {debt_id: 1, due_date: "2015-12-15", balance: "4325.0", payment_start_date: "2015-11-16", target_balance: "0.0"}
])
IncomeDistribution.create!([
  {distribution_date: "2015-10-23", boa_chk: "436.19", chase_chk: "10.0", paid: false, chase_focus: "Chase", boa_focus: "Amex"},
  {distribution_date: "2015-11-06", boa_chk: "1085.0", chase_chk: "80.0", paid: false, chase_focus: "Wolff Academy", boa_focus: "Amex"},
  {distribution_date: "2015-10-16", boa_chk: "1863.88", chase_chk: "710.0", paid: false, chase_focus: "Wolff Academy", boa_focus: "Amex"},
  {distribution_date: "2015-10-30", boa_chk: "2103.0", chase_chk: "10.0", paid: false, chase_focus: "Wolff Academy", boa_focus: "Amex"},
  {distribution_date: "2015-11-28", boa_chk: "2600.0", chase_chk: "1010.0", paid: false, chase_focus: "Wolff Academy", boa_focus: "Bank Of America"},
  {distribution_date: "2015-12-04", boa_chk: "2934.0", chase_chk: "2000.0", paid: true, chase_focus: "Wolff Academy", boa_focus: "Wolff Academy"}
])
IncomeSource.create!([
  {name: "Job 3", pay_schedule: "bi-weekly", pay_day: "friday", amount: "100.0", start_date: "2015-06-05", end_date: "2015-08-31"},
  {name: "Job 2", pay_schedule: "semi-monthly", pay_day: "15, last", amount: "100.0", start_date: "2015-10-01", end_date: "2015-12-31"},
  {name: "Job 1", pay_schedule: "weekly", pay_day: "thursday", amount: "100.0", start_date: "2015-01-01", end_date: "2015-12-31"}
])
PaymentMethod.create!([
  {name: "Credit", description: "Any of our cc"},
  {name: "Debit", description: "Any of our debit"},
  {name: "Gift", description: "Any gift card"},
  {name: "Cash", description: "Cash"},
  {name: "Other", description: "Any other form of payments"}
])
Spending.create!([
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-05-08", amount: "92.44", budget_id: nil, payment_method_id: 2},
  {description: "Awesome Granite Pants", category_id: 1, spending_date: "2015-05-23", amount: "55.79", budget_id: nil, payment_method_id: 4},
  {description: "Amex", category_id: 5, spending_date: "2015-06-12", amount: "92.2", budget_id: 5, payment_method_id: 2},
  {description: "Gorgeous Concrete Clock", category_id: 1, spending_date: "2015-09-08", amount: "32.32", budget_id: 16, payment_method_id: 2},
  {description: "Sleek Granite Lamp", category_id: 2, spending_date: "2015-05-01", amount: "34.7", budget_id: nil, payment_method_id: 3},
  {description: "Amex", category_id: 5, spending_date: "2015-09-25", amount: "22.6", budget_id: 20, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-06-23", amount: "23.95", budget_id: 5, payment_method_id: 2},
  {description: "Practical Granite Coat", category_id: 1, spending_date: "2015-09-24", amount: "54.61", budget_id: 16, payment_method_id: 4},
  {description: "Incredible Aluminum Coat", category_id: 1, spending_date: "2015-05-04", amount: "24.66", budget_id: nil, payment_method_id: 1},
  {description: "Enormous Bronze Shoes", category_id: 2, spending_date: "2015-09-03", amount: "15.41", budget_id: 17, payment_method_id: 3},
  {description: "Amex", category_id: 5, spending_date: "2015-06-25", amount: "85.88", budget_id: 5, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-16", amount: "83.51", budget_id: 4, payment_method_id: 2},
  {description: "Gorgeous Steel Table", category_id: 2, spending_date: "2015-07-14", amount: "80.56", budget_id: 7, payment_method_id: 3},
  {description: "Synergistic Rubber Coat", category_id: 3, spending_date: "2015-07-08", amount: "60.65", budget_id: 8, payment_method_id: 2},
  {description: "Heavy Duty Plastic Plate", category_id: 2, spending_date: "2015-09-19", amount: "94.74", budget_id: 17, payment_method_id: 4},
  {description: "Incredible Leather Clock", category_id: 3, spending_date: "2015-06-25", amount: "9.72", budget_id: 3, payment_method_id: 4},
  {description: "Awesome Plastic Plate", category_id: 2, spending_date: "2015-08-13", amount: "56.06", budget_id: 12, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-31", amount: "74.84", budget_id: 14, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-07-13", amount: "32.98", budget_id: 9, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-07-09", amount: "56.34", budget_id: 9, payment_method_id: 2},
  {description: "Heavy Duty Linen Computer", category_id: 1, spending_date: "2015-06-10", amount: "78.65", budget_id: 1, payment_method_id: 4},
  {description: "Lightweight Cotton Hat", category_id: 1, spending_date: "2015-06-16", amount: "32.93", budget_id: 1, payment_method_id: 3},
  {description: "Durable Granite Bottle", category_id: 1, spending_date: "2015-05-07", amount: "67.66", budget_id: nil, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-06", amount: "93.84", budget_id: 4, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-07-30", amount: "66.66", budget_id: 10, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-05-30", amount: "87.8", budget_id: nil, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-05-23", amount: "26.18", budget_id: nil, payment_method_id: 2},
  {description: "Incredible Linen Bag", category_id: 1, spending_date: "2015-07-03", amount: "88.29", budget_id: 6, payment_method_id: 5},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-05-01", amount: "21.33", budget_id: nil, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-21", amount: "44.63", budget_id: 4, payment_method_id: 2},
  {description: "Rustic Bronze Shirt", category_id: 1, spending_date: "2015-05-30", amount: "25.5", budget_id: nil, payment_method_id: 1},
  {description: "Awesome Iron Plate", category_id: 3, spending_date: "2015-08-01", amount: "11.99", budget_id: 13, payment_method_id: 2},
  {description: "Fantastic Bronze Shirt", category_id: 3, spending_date: "2015-05-06", amount: "9.44", budget_id: nil, payment_method_id: 1},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-23", amount: "93.38", budget_id: 14, payment_method_id: 2},
  {description: "Sleek Leather Lamp", category_id: 1, spending_date: "2015-08-01", amount: "58.82", budget_id: 11, payment_method_id: 3},
  {description: "Heavy Duty Marble Keyboard", category_id: 1, spending_date: "2015-06-19", amount: "40.9", budget_id: 1, payment_method_id: 1},
  {description: "Enormous Granite Plate", category_id: 3, spending_date: "2015-09-21", amount: "61.38", budget_id: 18, payment_method_id: 2},
  {description: "Durable Granite Gloves", category_id: 3, spending_date: "2015-05-06", amount: "2.53", budget_id: nil, payment_method_id: 5},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-07-17", amount: "37.22", budget_id: 9, payment_method_id: 2},
  {description: "Small Iron Bench", category_id: 1, spending_date: "2015-08-23", amount: "0.02", budget_id: 11, payment_method_id: 5},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-16", amount: "49.68", budget_id: 14, payment_method_id: 2},
  {description: "Mediocre Concrete Shoes", category_id: 2, spending_date: "2015-09-09", amount: "65.38", budget_id: 17, payment_method_id: 3},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-28", amount: "60.2", budget_id: 14, payment_method_id: 2},
  {description: "Lightweight Cotton Coat", category_id: 3, spending_date: "2015-06-05", amount: "81.35", budget_id: 3, payment_method_id: 1},
  {description: "Small Bronze Computer", category_id: 1, spending_date: "2015-08-26", amount: "99.14", budget_id: 11, payment_method_id: 3},
  {description: "Mediocre Leather Computer", category_id: 1, spending_date: "2015-08-09", amount: "25.49", budget_id: 11, payment_method_id: 1},
  {description: "Fantastic Linen Table", category_id: 3, spending_date: "2015-07-15", amount: "82.5", budget_id: 8, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-21", amount: "16.55", budget_id: 4, payment_method_id: 2},
  {description: "Sleek Iron Bench", category_id: 1, spending_date: "2015-07-23", amount: "42.06", budget_id: 6, payment_method_id: 1},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-16", amount: "27.1", budget_id: 14, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-05-09", amount: "76.31", budget_id: nil, payment_method_id: 2},
  {description: "Fantastic Leather Watch", category_id: 1, spending_date: "2015-06-10", amount: "83.02", budget_id: 1, payment_method_id: 1},
  {description: "Small Wooden Chair", category_id: 1, spending_date: "2015-05-28", amount: "59.81", budget_id: nil, payment_method_id: 5},
  {description: "Amex", category_id: 5, spending_date: "2015-09-21", amount: "20.73", budget_id: 20, payment_method_id: 2},
  {description: "Synergistic Steel Car", category_id: 2, spending_date: "2015-07-16", amount: "64.06", budget_id: 7, payment_method_id: 2},
  {description: "Aerodynamic Granite Bottle", category_id: 2, spending_date: "2015-05-08", amount: "20.75", budget_id: nil, payment_method_id: 3},
  {description: "Fantastic Wool Coat", category_id: 1, spending_date: "2015-06-27", amount: "68.48", budget_id: 1, payment_method_id: 5},
  {description: "Awesome Copper Plate", category_id: 2, spending_date: "2015-07-06", amount: "95.81", budget_id: 7, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-21", amount: "8.17", budget_id: 4, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-09-22", amount: "97.93", budget_id: 19, payment_method_id: 2},
  {description: "Heavy Duty Linen Wallet", category_id: 3, spending_date: "2015-06-30", amount: "90.99", budget_id: 3, payment_method_id: 4},
  {description: "Amex", category_id: 5, spending_date: "2015-08-24", amount: "52.32", budget_id: 15, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-05-20", amount: "55.66", budget_id: nil, payment_method_id: 2},
  {description: "Practical Aluminum Bench", category_id: 3, spending_date: "2015-06-23", amount: "64.4", budget_id: 3, payment_method_id: 1},
  {description: "Fantastic Steel Pants", category_id: 3, spending_date: "2015-07-27", amount: "73.46", budget_id: 8, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-09-17", amount: "33.99", budget_id: 19, payment_method_id: 2},
  {description: "Durable Bronze Hat", category_id: 1, spending_date: "2015-05-21", amount: "20.78", budget_id: nil, payment_method_id: 5},
  {description: "Awesome Steel Keyboard", category_id: 3, spending_date: "2015-08-09", amount: "43.78", budget_id: 13, payment_method_id: 5},
  {description: "Awesome Marble Bench", category_id: 1, spending_date: "2015-05-11", amount: "98.68", budget_id: nil, payment_method_id: 5},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-06-09", amount: "26.96", budget_id: 4, payment_method_id: 2},
  {description: "Sleek Paper Knife", category_id: 1, spending_date: "2015-06-29", amount: "47.94", budget_id: 1, payment_method_id: 1},
  {description: "Heavy Duty Linen Chair", category_id: 3, spending_date: "2015-05-24", amount: "9.36", budget_id: nil, payment_method_id: 4},
  {description: "Amex", category_id: 5, spending_date: "2015-06-09", amount: "19.99", budget_id: 5, payment_method_id: 2},
  {description: "Lightweight Plastic Coat", category_id: 1, spending_date: "2015-09-21", amount: "49.44", budget_id: 16, payment_method_id: 4},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-09-23", amount: "76.71", budget_id: 19, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-07-19", amount: "54.2", budget_id: 9, payment_method_id: 2},
  {description: "Synergistic Leather Knife", category_id: 1, spending_date: "2015-06-07", amount: "20.5", budget_id: 1, payment_method_id: 4},
  {description: "Heavy Duty Cotton Shoes", category_id: 2, spending_date: "2015-06-07", amount: "85.32", budget_id: 2, payment_method_id: 3},
  {description: "Rustic Granite Bottle", category_id: 2, spending_date: "2015-07-23", amount: "7.58", budget_id: 7, payment_method_id: 1},
  {description: "Mediocre Aluminum Coat", category_id: 2, spending_date: "2015-07-15", amount: "6.56", budget_id: 7, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-08-08", amount: "17.91", budget_id: 14, payment_method_id: 2},
  {description: "Ergonomic Aluminum Wallet", category_id: 1, spending_date: "2015-07-12", amount: "65.76", budget_id: 6, payment_method_id: 1},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-07-04", amount: "60.97", budget_id: 9, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-08-08", amount: "32.67", budget_id: 15, payment_method_id: 2},
  {description: "Incredible Marble Plate", category_id: 2, spending_date: "2015-09-26", amount: "37.77", budget_id: 17, payment_method_id: 4},
  {description: "Incredible Steel Knife", category_id: 2, spending_date: "2015-08-28", amount: "27.24", budget_id: 12, payment_method_id: 2},
  {description: "Small Paper Table", category_id: 1, spending_date: "2015-05-17", amount: "95.56", budget_id: nil, payment_method_id: 1},
  {description: "Mediocre Copper Table", category_id: 3, spending_date: "2015-08-25", amount: "62.37", budget_id: 13, payment_method_id: 2},
  {description: "Rustic Marble Lamp", category_id: 1, spending_date: "2015-06-30", amount: "97.99", budget_id: 1, payment_method_id: 3},
  {description: "Enormous Plastic Keyboard", category_id: 2, spending_date: "2015-05-26", amount: "65.51", budget_id: nil, payment_method_id: 5},
  {description: "Heavy Duty Paper Pants", category_id: 3, spending_date: "2015-08-04", amount: "23.49", budget_id: 13, payment_method_id: 3},
  {description: "Small Wooden Keyboard", category_id: 3, spending_date: "2015-06-23", amount: "9.81", budget_id: 3, payment_method_id: 4},
  {description: "Heavy Duty Bronze Clock", category_id: 3, spending_date: "2015-06-05", amount: "58.44", budget_id: 3, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-08-27", amount: "19.02", budget_id: 15, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-08-01", amount: "53.94", budget_id: 15, payment_method_id: 2},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-09-21", amount: "21.87", budget_id: 19, payment_method_id: 2},
  {description: "Rustic Paper Coat", category_id: 3, spending_date: "2015-08-06", amount: "79.07", budget_id: 13, payment_method_id: 3},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-09-23", amount: "78.62", budget_id: 19, payment_method_id: 2},
  {description: "Heavy Duty Concrete Car", category_id: 1, spending_date: "2015-05-04", amount: "60.03", budget_id: nil, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-06-06", amount: "73.83", budget_id: 5, payment_method_id: 2},
  {description: "Shea Moisture", category_id: 2, spending_date: "2015-09-04", amount: "55.95", budget_id: 17, payment_method_id: 1},
  {description: "Emergency", category_id: 6, spending_date: "2015-09-25", amount: "328.0", budget_id: 24, payment_method_id: 2},
  {description: "Amex", category_id: 5, spending_date: "2015-11-04", amount: "450.0", budget_id: 154, payment_method_id: 2},
  {description: "Avalon", category_id: 7, spending_date: "2015-11-01", amount: "1526.0", budget_id: 161, payment_method_id: 2},
  {description: "Should Get Warning", category_id: 1, spending_date: "2015-11-30", amount: "300.0", budget_id: 150, payment_method_id: 1},
  {description: "Wolff Academy", category_id: 4, spending_date: "2015-12-04", amount: "2980.48", budget_id: nil, payment_method_id: 2},
  {description: "Vw", category_id: 4, spending_date: "2015-12-04", amount: "186.19", budget_id: nil, payment_method_id: 2},
  {description: "Should Add New Budget", category_id: 2, spending_date: "2015-12-16", amount: "23.0", budget_id: 163, payment_method_id: 1}
])
User.create!([
  {first_name: "Dev", last_name: "Dev", email: "dev@local.com", username: "dev", password_digest: "$2a$10$MQXBLoTi4vAnoJ/YkzWuDuphjbQ0QqCN5diUUmxiHmCcZ3T9MY9lW", remember_digest: nil, activation_digest: "$2a$10$l.aBO6xf6EpA0XD02HDacufYMB5Kgke1mu1wEvEHym4lkdhnhmPBe", activated: nil}
])
