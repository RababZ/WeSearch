puts 'Destroying all industries...'
Industry.destroy_all
puts 'Destroying all projects...'
Project.destroy_all
puts 'Destroying all users...'
User.destroy_all


# Managers
3.times do
  user = User.create(
    first_name: Faker::Name::first_name,
    last_name: Faker::Name::last_name,
    email: "manager@email.com",
    password: "123456",
    role: 'manager'
  )
  puts "User #{user.email} (#{user.role}) created"
end

# Clients
5.times do
  user = User.create(
    first_name: Faker::Name::first_name,
    last_name: Faker::Name::last_name,
    email: "client@email.com",
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
    email: "expert@email.com",
    password: "123456",
    role: 'expert',
    availability: [false, true].sample
  )
  puts "User #{user.email} (#{user.role}) created"
end

10.times do
  project = Project.create(
    title: Faker::Book.title,
    description: Faker::Simpsons.quote,
    status: [false, true].sample,
    start_date: Date.today,
    deadline: Date.today + rand(1..5).year,
    client: User.where(role: 'client').sample,
    manager: User.where(role: 'manager').sample,
    expert: User.where(role: 'expert').sample
  )
  puts "Project #{project.title} created"

  rand(5..10).times do
    task = Task.create(
      title: Faker::Book.title,
      description: "Consultants offer advice and expertise to organisations to help them improve their business performance in terms of operations, profitability, management, structure and strategy. Although the workload can be heavy, consulting is a sociable profession with plenty of networking opportunities. The work stretches across a variety of areas, including management, strategy, IT, finance, marketing, HR and supply chain management",
      project: project,
      status: [false, true].sample
    )
    puts "Task #{task.title} created for #{project.title}"
  end
end
