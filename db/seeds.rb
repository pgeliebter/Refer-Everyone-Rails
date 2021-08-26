User.create!([

  { first_name: "Ralph", last_name: "Carlyle", email: "ralph@example.com", password: "password", phone: "111-111-1111" },
  { first_name: "Yaa", last_name: "Geli", email: "yaa@example.com", password: "password", phone: "222-222-2222" },

])
Campaign.create!([
  { name: "We all scream for ice cream", company: "Haagen-Dazs", user_id: 1, incentive: 43.12 },

  { name: "Fly a kite", company: "KiteCo", user_id: 2, incentive: 15.00 },
  { name: "Coders need us!", company: "Github", user_id: 1, incentive: 15.00 },
])
Conversion.create!([
  { first_name: "Bob", last_name: "Dillion", email: "bob@example.com", phone: "333-333-3333", campaign_id: 1 },
  { first_name: "Captain", last_name: "Edwards", email: "captain@example.com", phone: "444-444-4444", campaign_id: 1 },
  { first_name: "Yaa", last_name: "Geli", email: "yaa@example.com", phone: "222-222-2222", campaign_id: 1 },
  { first_name: "Boo", last_name: "Flack", email: "boo@example.com", phone: "666-666-6666", campaign_id: 2 },
  { first_name: "Captain", last_name: "Edwards", email: "captain@example.com", phone: "444-444-4444", campaign_id: 2 },

])
