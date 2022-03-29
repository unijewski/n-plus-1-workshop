desc "Generates sample data in the database"
task generate_data: :environment do
  abort "N parameter is missing" if ENV["N"].blank?

  Rails::Command.invoke("db:reset")

  # FIXME: Set proper associations
  ENV["N"].to_i.times do
    address = Address.new(city: Faker::Address.city, street: Faker::Address.street_name)
    user = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
    Post.create!(body: Faker::Lorem.paragraph)
  end

  puts "#{ENV['N']} records have been created!"
end
