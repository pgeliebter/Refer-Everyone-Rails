users = User.create!([
  { first_name: "Ralph", last_name: "Carlyle", email: "ralph@example.com", password_digest: "$2a$12$YgHz1IsHlMpaEYP/Hpmdw.Gwxw3AD2CuLbi6ohIKFvk/0E.JlWhIm", phone: "111-111-1111" },
  { first_name: "Yaa", last_name: "Geli", email: "yaa@example.com", password_digest: "$2a$12$WDDhk8OeUkTVWTT3fGzOt.k1P9Wnxvb1Qi2JaR/bkDKXPe6qUXqyq", phone: "222-222-2222" },
  { first_name: "George", last_name: "Lucas", email: "starwars@example.com", password_digest: "$2a$12$2Z/w8JPRBty0vqhsMyUuvevDOU.7kNgo9KnexqtlSFCOxZigTeMza", phone: "123-123-1233" },
  { first_name: "Someone", last_name: "Random", email: "random@example.com", password_digest: "$2a$12$Qko4bAhANO4l0bFMFILe4.kv1ImZX2wWx7xA20cpEzwqJB5rrYSi6", phone: "917-999-9999" },
])

campaigns = Campaign.create!([
  { name: "We all scream for ice cream", company: "Haagen-Dazs", user_id: 1, incentive: "43.12", image: nil },
  { name: "Fly a kite", company: "KiteCo", user_id: 2, incentive: "15.0", image: nil },
  { name: "Coders need us!", company: "Github", user_id: 1, incentive: "15.0", image: nil },
  { name: "Join the dark side!", company: "The Empire", user_id: 3, incentive: "100.0", image: "https://lumiere-a.akamaihd.net/v1/images/Death-Star-I-copy_36ad2500.jpeg" },
  { name: "Become a force ghost!", company: "The Force", user_id: 3, incentive: "15.0", image: "https://i.ibb.co/ZxLLvy4/Something.jpg" },
])

conversions = []
conversions << Conversion.create!(
  { first_name: "Bob", last_name: "Dillion", email: "bob@example.com", phone: "333-333-3333", campaign_id: Campaign.find_by(name: "We all scream for ice cream").id, referred_by: nil }
)
conversions << Conversion.create!(
  { first_name: "Boo", last_name: "Flack", email: "boo@example.com", phone: "666-666-6666", campaign_id: Campaign.find_by(name: "Fly a kite").id, referred_by: nil }
)
conversions << Conversion.create!(
  { first_name: "Captain", last_name: "Edwards", email: "captain@example.com", phone: "444-444-4444", campaign_id: campaigns[1].id, referred_by: conversions[1] }
)

conversions << Conversion.create!({ first_name: "Yaa", last_name: "Geli", email: "yaa@example.com", phone: "222-222-2222", campaign_id: campaigns[0].id, referred_by: conversions[1] })
conversions << Conversion.create!({ first_name: "Sheev", last_name: "Palpatine", email: "palpatine@example.com", phone: "555-555-5555", campaign_id: campaigns[3].id, referred_by: nil })
conversions << Conversion.create!({ first_name: "Darth", last_name: "Maul", email: "rcar@example.com", phone: "213-213-2133", campaign_id: campaigns[3].id, referred_by: Conversion.find_by(first_name: "Sheev") })
conversions << Conversion.create!({ first_name: "Darth", last_name: "Vader", email: "vader@example.com", phone: "313-313-3133", campaign_id: campaigns[3].id, referred_by: Conversion.find_by(first_name: "Sheev") })
conversions << Conversion.create!({ first_name: "Qui-Gon", last_name: "Jinn", email: "jedi4life@example.com", phone: "553-323-3232", campaign_id: campaigns[4].id, referred_by: nil })
conversions << Conversion.create!({ first_name: "Minch", last_name: "Yoda", email: "greenmachine@example.com", phone: "888-NOT-FAKE", campaign_id: campaigns[4].id, referred_by: Conversion.find_by(first_name: "Qui-Gon") })
