puts 'Destroying all industries...'
Industry.destroy_all
puts 'Destroying all projects...'
Project.destroy_all
puts 'Destroying all users...'
User.destroy_all

# Main Manager
user = User.create(
    first_name: 'Rabab',
    last_name: 'Zaitouni',
    email: "rabab.zaitouni@wisor.com",
    password: "123456",
    role: 'manager'
  )

# Second Manager
user = User.create(
    first_name: 'Nouha',
    last_name: 'Abardazzou',
    email: "nouha.Abardazzou@wisor.com",
    password: "123456",
    role: 'manager'
  )

puts "Main manager created"

# Main Client
user = User.create(
    first_name: 'Trista',
    last_name: 'Freier',
    email: "trista.freier@gmail.com",
    password: "123456",
    role: 'client'
  )

puts "Main client created"

# Client 2
user = User.create(
    first_name: 'Helen',
    last_name: 'Brook',
    email: "helen.brook@gmail.com",
    password: "123456",
    role: 'client'
)

puts "Client 2 created"

# Client 3
user = User.create(
    first_name: 'David',
    last_name: 'Heather',
    email: "david.heather@gmail.com",
    password: "123456",
    role: 'client'
)

puts "Client 3 created"

# Main Expert - Finance/Morocco
user = User.create(
    first_name: 'Mehdi',
    last_name: 'Ritab',
    email: "mehdi.ritab@gmail.com",
    password: "123456",
    role: 'expert',
    description: 'I have more than five years of experience in Market Research: Market Analysis, Market Segmentation and Competitive Analysis.
    And I am working now as a full-time independent research analyst',
    past_experience: 'Research Analyst for 5 years at McKinsey&Company, Paris.',
    availability: true,
    country: "Morocco",
    industry: 'Finance',
    languages: "Arabic, French, English, Spanish",
    phone_number: '(+212) 676 82 02 34',
    hours_available_per_weeek: 20,
    years_experience: 6
  )
puts "Main expert created"

# Expert 2 - Finance/Morocco
user = User.create(
    first_name: 'Rachia',
    last_name: 'Abbassi',
    email: "rachida.abbasi@gmail.com",
    password: "123456",
    role: 'expert',
    description: 'I am a financial analyst, specialised in the banking and insurance market.
    I am currently running my own insurance company in Kenya and working on different projects through Wisor to keep a good eye on the market',
    past_experience: 'Financial analyst at JP Morgan for 5 years. And now, running my own company.',
    availability: true,
    country: "Kenya",
    industry: 'Finance',
    languages: "Swahili, English",
    phone_number: '(+254) 676 82 02 34',
    hours_available_per_weeek: 20,
    years_experience: 6
  )
puts "Expert 2 created"

# Expert 3 - Finance/Morocco
user = User.create(
    first_name: 'Soukaina',
    last_name: 'Laaraichi',
    email: "soukaina.laraichi@gmail.com",
    password: "123456",
    role: 'expert',
    description: 'I have worked in a leading insurance company for 10 years',
    past_experience: 'Financial analyst at JP Morgan for 5 years. And now, running my own company.',
    availability: true,
    country: "Morocco",
    industry: 'Finance',
    languages: "Arabic, French, English",
    phone_number: '(+212) 665 43 01 02',
    hours_available_per_weeek: 20,
    years_experience: 10
  )
puts "Expert 3 created"

# Expert 4 - Agriculture/Kenya
user = User.create(
    first_name: 'Amine',
    last_name: 'Tazi',
    email: "amine.tazi@gmail.com",
    password: "123456",
    role: 'expert',
    description: 'Graduated from one of the best schools in the country. I Can adapt to any type of request: secondary or primary. I have a broad market research experience in Finance',
    past_experience: 'I have been working for 2 years now as an independent research analyst',
    availability: true,
    country: "Morocco",
    industry: 'Agriculture',
    languages: "Swahili, English",
    phone_number: '(+254) 670 34 02 22',
    hours_available_per_weeek: 20,
    years_experience: 2
  )
puts "Expert 4 created"

# Expert 5 - Technology/South Africa
user = User.create(
    first_name: 'Bryan',
    last_name: 'Garfield',
    email: "bryan.garfield@gmail.com",
    password: "123456",
    role: 'expert',
    description: "I'm a professional survey research analyst. Spent two years at top-50 global market research firm.
                  Professional experience in survey design, survey programming and survey results analysis. Proficient in Excel, Qualtrics",
    availability: true,
    country: "South Africa",
    industry: 'Technology',
    languages: "Afrikaans, English",
    phone_number: '(+27) 11 978 5313',
    hours_available_per_weeek: 20,
    years_experience: 6
  )
puts "Expert 5 created"

# Expert 6 - Technology/South Africa
user = User.create(
    first_name: 'Christina',
    last_name: 'Abegunde',
    email: "christina.abegunde@gmail.com",
    password: "123456",
    role: 'expert',
    description: "I'm a professional survey research analyst. Spent two years at top-50 global market research firm.
                  Professional experience in survey design, survey programming and survey results analysis. Proficient in Excel, Qualtrics",
    availability: true,
    country: "Nigeria",
    industry: 'Technology',
    languages: "Afrikaans, English",
    phone_number: '(+27) 11 978 5313',
    hours_available_per_weeek: 20,
    years_experience: 6
  )
puts "Expert 6 created"

# Expert 7 - Healthcare/Ivory Coast
user = User.create(
    first_name: 'Emmanuel',
    last_name: 'Oduor',
    email: "emmanuel.oduor@gmail.com",
    password: "123456",
    role: 'expert',
    description: "I am working as a surgent in Ivory Coast.
                  I am here to give expertise advice to businesses who would like to know more about the healthcare market in Ivory Coast",
    past_experience: 'Financial analyst at JP Morgan for 5 years. And now, running my own company.',
    availability: true,
    country: "Kenya",
    industry: 'Finance',
    languages: "Swahili, English",
    phone_number: '(+254) 676 82 02 34',
    hours_available_per_weeek: 20,
    years_experience: 15
    )

# # Experts
# 10.times do
#   user = User.create(
#     first_name: Faker::Name::first_name,
#     last_name: Faker::Name::last_name,
#     email: Faker::Internet.email,
#     password: "123456",
#     role: 'expert',
#     description: 'Lorem ipsum dolor sit amet, nam partem possit at. Ea eum paulo mundi graece, stet reformidans ius eu. Mel prompta corrumpit ea. Sea tempor constituto eloquentiam no, detraxit platonem duo ex. An timeam molestiae scriptorem pri, at eam illud graecis. Verear labitur ut sea, sit appareat suavitate ei, qui libris malorum ei. Et ubique aliquip deleniti vel.

#                   Mea ea oratio voluptatibus, scaevola repudiandae at qui. Eos aeque sensibus temporibus ad. Te mel causae sententiae, cum ignota nusquam copiosae ut, sit urbanitas reformidans eu. No est mediocrem similique mediocritatem, ne mel temporibus conclusionemque, cu epicurei placerat imperdiet pro. In nec alienum maluisset, vim zril scaevola recteque in. Ei nam ullum virtute, rebum dolore vix an. An ornatus voluptua verterem duo, qui commune laboramus persecuti in.

#                   Simul prompta pro ad, ad splendide disputationi vis. Appetere elaboraret honestatis id pri. Ei eam tamquam habemus, quas omittantur sit ne. Sea impetus suavitate persecuti no, minim gloriatur et pro.',
#     years_experience: ["2+ years", "5+ years", "10+ years"].sample,
#     industry: ["Agriculture", "Construction", "Finance", "Healthcare", "Manufacturing", "Retail", "Technology"].sample,
#     country: ['Ethiopia', 'Ghana', 'Ivory Coast', 'Kenya', 'Morocco', 'Nigeria', 'Senegal', 'South Africa', 'Tunisia'].sample,
#     hours_available_per_weeek: [5, 10, 15, 20, 25, 30, 35, 40].sample,
#     availability: [false, true].sample
#   )
#   puts "User #{user.email} (#{user.role}) created"
# end

# project 1
project = Project.create(
  title: 'Agriculture contribution to GDP',
  description: 'We want to know the contribution of Agriculture to GDP in Morocco during the past years 2008- 2018',
  status: false,
  approved: true,
  start_date: Date.today + rand(1..5).day,
  deadline: Date.today + rand(6..30).day,
  nb_tasks: 1,
  nb_hours: 10,
  expertise_level: "2+ years",
  industry: "Agriculture",
  country: 'Morocco',
  client: User.where(email: 'helen.brook@gmail.com').sample,
  manager: User.where(email: 'rabab.zaitouni@wisor.com').sample,
  expert: User.where(email: 'mehdi.ritab@gmail.com').sample
  )
project.nb_tasks.times do
    task = Task.create(
      title: Faker::Book.title,
      description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
      project: project,
      status: [false, true].sample,
      deadline: Date.today + rand(1..5).year
    )

end
puts "Project 1 created"

# project 2
project = Project.create(
  title: 'Market Analysis of the clothing industry in Ethiopia',
  description: 'We would like to have a view of the overall clothing market in Ethiopia: trends, competition,...',
  status: false,
  approved: true,
  start_date: Date.today + rand(1..5).day,
  deadline: Date.today + rand(6..30).day,
  nb_tasks: 6,
  nb_hours: 30,
  expertise_level: "5+ years",
  industry: "Retail",
  country: 'Ethiopia',
  client: User.where(email: 'helen.brook@gmail.com').sample,
  manager: User.where(email: 'rabab.zaitouni@wisor.com').sample,
  expert: User.where(email: "bryan.garfield@gmail.com").sample
  )
project.nb_tasks.times do
    task = Task.create(
      title: Faker::Book.title,
      description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
      project: project,
      status: [false, true].sample,
      deadline: Date.today + rand(1..5).year
    )

end

puts "Project 2 created"

# project 3
project = Project.create(
  title: "Supermarkets: total number, revenue, market share of each player",
  description: 'We need to run a study on the number of supermarkets in Senegal. This will probably require a primary research.
                On top of that, a list of all players and their market share',
  status: false,
  approved: true,
  start_date: Date.today + rand(1..5).day,
  deadline: Date.today + rand(6..30).day,
  nb_tasks: 6,
  nb_hours: 30,
  expertise_level: "2+ years",
  industry: "Retail",
  country: 'Senegal',
  client: User.where(email: 'david.heather@gmail.com').sample,
  manager: User.where(email: 'rabab.zaitouni@wisor.com').sample,
  expert: User.where(email: "rachida.abbasi@gmail.com").sample
  )
project.nb_tasks.times do
    task = Task.create(
      title: Faker::Book.title,
      description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
      project: project,
      status: [false, true].sample,
      deadline: Date.today + rand(1..5).year
    )

end
puts "Project 3 created"

# 10.times do
#   project = Project.create(
#     title: Faker::Book.title,
#     description: Faker::Simpsons.quote,
#     status: [false, true].sample,
#     approved: [false, true].sample,
#     start_date: Date.today,
#     deadline: Date.today + rand(1..5).year,
#     nb_tasks: rand(1..5),
#     nb_hours: [10, 15, 20, 25, 30, 35, 40].sample,
#     expertise_level: ["2+ years", "5+ years", "10+ years"].sample,
#     industry: ["Agriculture", "Construction", "Finance", "Healthcare", "Manufacturing", "Retail", "Technology"].sample,
#     country: ['Ethiopia', 'Ghana', 'Ivory Coast', 'Morocco', 'Nigeria', 'Senegal', 'South Africa', 'Tunisia'].sample,
#     client: User.where(role: 'client').sample,
#     manager: User.where(role: 'manager').sample,
#     expert: User.where(role: 'expert').sample
#   )
#   puts "Project #{project.title} created"

# project.nb_tasks.times do
#     task = Task.create(
#       title: Faker::Book.title,
#       description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
#       project: project,
#       status: [false, true].sample,
#       deadline: Date.today + rand(1..5).year
#     )

# end
# end
