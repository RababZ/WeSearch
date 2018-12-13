puts 'Destroying all industries...'
Industry.destroy_all
puts 'Destroying all projects...'
Project.destroy_all
puts 'Destroying all users...'
User.destroy_all

# Main Manager
user = User.create(
    first_name: 'Trista',
    last_name: 'Freier',
    email: "trista.freier@wisor.com",
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
    first_name: 'Rabab',
    last_name: 'Zaitouni',
    email: "rabab.zaitouni@gmail.com",
    password: "123456",
    role: 'client'
  )
puts "Main client created"

# Main Expert
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
    country: "Tunisia",
    hours_available_per_weeek: 20,
    years_experience: 6,
  )
puts "Main expert created"

# Managers
2.times do
  user = User.create(
    first_name: Faker::Name::first_name,
    last_name: Faker::Name::last_name,
    email: Faker::Internet.email,
    password: "123456",
    role: 'manager'
  )
  puts "User #{user.email} (#{user.role}) created"
end

# Clients
4.times do
  user = User.create(
    first_name: Faker::Name::first_name,
    last_name: Faker::Name::last_name,
    email: Faker::Internet.email,
    password: "123456",
    role: 'client'
  )
  puts "User #{user.email} (#{user.role}) created"
end

# Experts
10.times do
  user = User.create(
    first_name: Faker::Name::first_name,
    last_name: Faker::Name::last_name,
    email: Faker::Internet.email,
    password: "123456",
    role: 'expert',
    description: 'Lorem ipsum dolor sit amet, nam partem possit at. Ea eum paulo mundi graece, stet reformidans ius eu. Mel prompta corrumpit ea. Sea tempor constituto eloquentiam no, detraxit platonem duo ex. An timeam molestiae scriptorem pri, at eam illud graecis. Verear labitur ut sea, sit appareat suavitate ei, qui libris malorum ei. Et ubique aliquip deleniti vel.

                  Mea ea oratio voluptatibus, scaevola repudiandae at qui. Eos aeque sensibus temporibus ad. Te mel causae sententiae, cum ignota nusquam copiosae ut, sit urbanitas reformidans eu. No est mediocrem similique mediocritatem, ne mel temporibus conclusionemque, cu epicurei placerat imperdiet pro. In nec alienum maluisset, vim zril scaevola recteque in. Ei nam ullum virtute, rebum dolore vix an. An ornatus voluptua verterem duo, qui commune laboramus persecuti in.

                  Simul prompta pro ad, ad splendide disputationi vis. Appetere elaboraret honestatis id pri. Ei eam tamquam habemus, quas omittantur sit ne. Sea impetus suavitate persecuti no, minim gloriatur et pro.',
    years_experience: ["2+ years", "5+ years", "10+ years"].sample,
    industry: ["Agriculture", "Finance", "Manufacturing", "Energy", "Communications"].sample,
    country: ["France", "Morocco", "Germany", "South Africa"].sample,
    hours_available_per_weeek: [5, 10, 15, 20, 25, 30, 35, 40].sample,
    availability: [false, true].sample
  )
  puts "User #{user.email} (#{user.role}) created"
end

10.times do
  project = Project.create(
    title: Faker::Book.title,
    description: Faker::Simpsons.quote,
    status: [false, true].sample,
    approved: [false, true].sample,
    start_date: Date.today,
    deadline: Date.today + rand(1..5).year,
    nb_tasks: rand(1..5),
    nb_hours: [10, 15, 20, 25, 30, 35, 40].sample,
    expertise_level: ["2+ years", "5+ years", "10+ years"].sample,
    industry: ["Agriculture", "Finance", "Manufacturing", "Energy", "Communications"].sample,
    country: ["France", "Morocco", "Germany", "South Africa"].sample,
    client: User.where(role: 'client').sample,
    manager: User.where(role: 'manager').sample,
    expert: User.where(role: 'expert').sample
  )
  puts "Project #{project.title} created"

  project.nb_tasks.times do
    task = Task.create(
      title: Faker::Book.title,
      description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
      project: project,
      status: [false, true].sample,
      deadline: Date.today + rand(1..5).year
    )
    puts "Task #{task.title} created for #{project.title}"
  end
end
