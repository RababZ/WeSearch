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
    email: Faker::Internet::email,
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
    email: Faker::Internet::email,
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
    email: Faker::Internet::email,
    password: "123456",
    role: 'expert'
  )
  puts "User #{user.email} (#{user.role}) created"
end

10.times do
  project = Project.create(
    title: Faker::Simpsons.quote,
    description: Faker::Simpsons.quote,
    status: false,
    start_date: Date.today,
    deadline: Date.today + rand(1..5).year,
    client: User.where(role: 'client').sample,
    manager: User.where(role: 'manager').sample
  )
  puts "Project #{project.title} created"

  rand(5..10).times do
    task = Task.create(
      title: Faker::Simpsons.quote,
      project: project,
      user: User.where(role: 'expert').sample
    )
    puts "Task #{task.title} created for #{project.title}"
  end
end
