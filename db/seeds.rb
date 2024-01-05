# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
titles = [
  'Beyond the Hustle: Cultivating Sustainable Productivity in the Real World',
  'Unmasking the Myth of Multitasking: Why Single-Minded Focus Wins Every Time',
  'From Sleep Deprived to Supercharged: 5 Hacks for Restorative Nighttime Routines',
  'From Beginner to Barista: Mastering the Art of Coffee at Home (Even Without Fancy Equipment)',
  'Declutter Your Digital Life: Tips and Tricks for a Streamlined Online Experience',
  'Embrace the Unexpected: How Embracing Imperfections Can Lead to Greater Creativity',
  'Green Thumbs Wanted: Grow Your Own Salad Bar with These Easy-to-Care-For Veggies',
  'Budgeting for Fun: How to Prioritize Joyful Experiences Without Breaking the Bank',
  'The Power of "No": Setting Healthy Boundaries to Protect Your Time and Energy',
  'Beyond the "Like" Button: Cultivating Genuine Connection in a Digital World'
]

titles.each do |title|
  Article.create(title: title,
                 content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
end
