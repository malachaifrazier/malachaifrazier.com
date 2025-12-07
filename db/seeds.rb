# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

projects = [
  { name: "Crowdheavy", featured: true, slug: "crowdheavy", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2021, description: "Platform to provide remote user testing and usability insights.", outcome: "Shut it down", notes: "Not enough traction to cover operational costs.", link: "" },
  { name: "The Nation of Thiesa", featured: true, slug: "thiesa", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2015, description: "A sovereign, fully digital nation-state with no claims to physical land.", outcome: "In limbo", notes: "Unofficially shut down. I'd be willing to revisit this project in the future.", link: "" },
  { name: "Detroit Rails", slug: "detroit-rails", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2014, description: "Entry-level, in-person Ruby on Rails classes in Detroit.", outcome: "Shut it down", notes: "The lack of qualified instructors coupled with rising Detroit real estate costs were the primary reasons why I shut it down. I'm willing to revisit this is the future.", link: "" },
  { name: "Shortjab", slug: "shortjab", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2011, description: "Two-sided marketplace for producers and recording artists.", outcome: "Shut it down", notes: "The app that I learned Rails to build. Competition ate my lunch.", link: "" },
  { name: "Easy Asset List", featured: true, slug: "easy-asset-list", year: 2020, description: "A suite of tools designed to streamline processes for Real Estate Wholesale professionals.", outcome: "Shut it down", notes: "Wholesalers were not interested in a \"Zillow-like\" service just for them like I assumed.", link: "" },
  { name: "noonthirty.one", slug: "noon-thirty-one", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2024, description: "Holding firm for my future software projects.", outcome: "Active", notes: "Nothing fancy. I needed an entity to simplify things.", link: "https://noonthirty.one" },
  { name: "ComicCollab", slug: "comic-collab", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2024, description: "For comic book creators to collaborate on free and paid projects", outcome: "Active", notes: "Working on it!", link: "https://comiccollab.com" },
  { name: "Mighty Noice", slug: "mighty-noice", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2024, description: "Wild and mildly offensive clothing designs.", outcome: "Shut it down. Revived it. Shut it down again.", notes: "Really wanted this to work, but the business model is terrible.", link: "" },
  { name: "Sex Sounds Club", slug: "sex-sounds", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2023, description: "Spicy, erotic audio", outcome: "Shut it down", notes: "Nice amount of interest, but difficult to monetize the service and license the content", link: "" },
  { name: "The Inferno Times", featured: true, slug: "the-inferno-times", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2024, description: "Satirical news site.", outcome: "In limbo", notes: "Hell's Premier News Source. Very fun.", link: "https://infernotimes.com" },
  { name: "Lawrilla", slug: "lawrilla", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2014, description: "Helped law firms grow and scale like tech startups.", outcome: "Shut it down", notes: "", link: "" },
  { name: "Courtshipper/Courtshipher", slug: "courtshipper", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2022, description: "The Suitor Tracking System.", outcome: "Shut it down", notes: "Dating app where suitors apply to each other with applications like a job. Extremely difficult to monetize without explosive growth. Did not have any of that.", link: "" },
  { name: "Fundercove", slug: "fundercove", year: 2019, description: "Alternative Investment Marketplace.", outcome: "Shut it down", notes: "Kickstarter, GoFundMe, and WeFunder on a single platform. Crowdfunding and Crowdinvesting for RegCF Startups. Might upgrade everything and open source it", link: "" },
  { name: "Wombathouse", slug: "wombathouse", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2022, description: "The family management system for the rest of us.", outcome: "Shut it down", notes: "Willing to revisit in the future", link: "" },
  { name: "Las Vegas Fence", slug: "lasvegasfence", tech_stack: ["Rails", "RSpec", "PostgreSQL"], year: 2015, description: "Lead gen for fence pros in Las Vegas", outcome: "Shut it down", notes: "", link: "" }
]

puts "Seeding the database with #{projects.count} projects"
projects.each do |project|
  Project.find_or_create_by(name: project[:name]) do |p|
    p.slug = project[:slug]
    p.tech_stack = project[:tech_stack]
    p.year = project[:year]
    p.description = project[:description]
    p.outcome = project[:outcome]
    p.notes = project[:notes]
    p.link = project[:link]
  end
end
puts "#{Project.count} Projects created! Seeding complete!"

#Seed books
books = [
  { title: "Blood Meridian", position: 1, author: "Cormac McCarthy", category: "Fiction", link: "https://www.goodreads.com/book/show/394535.Blood_Meridian_or_the_Evening_Redness_in_the_West" },
  { title: "John Dies at the End", position: 2, author: "Jason Pargin", category: "Fiction", link: "https://www.goodreads.com/book/show/1857440.John_Dies_at_the_End"},
  { title: "This Book Is Full of Spiders", position: 3, author: "Jason Pargin", category: "Fiction", link: "https://www.goodreads.com/book/show/12924261-this-book-is-full-of-spiders"},
  { title: "LOCAL MAN", position: 4, author: "TONY FLEECS and TIM SEELEY", category: "Comics", link: "https://imagecomics.com/comics/series/local-man"},
  { title: "Pulp", position: 5, author: "Ed Brubaker", category: "Comics", link: "https://imagecomics.com/comics/series/pulp"},
]

puts "Seeding the database with #{books.count} books"
books.each do |book|
  Book.find_or_create_by(title: book[:title]) do |b|
    b.author = book[:author]
    b.position = book[:position]
    b.category = book[:category]
    b.link = book[:link]
  end
end
puts "#{Book.count} Books created! Seeding complete!"

# Create articles
articles = [
  {
    title: "On Building Products That Don't Suck",
    excerpt: "Why most software fails at the basics and how to fix it.",
    body: "Why most software fails at the basics and how to fix it.",
    slug: "building-products-that-dont-suck",
    publish_at: Date.new(2024, 12, 1)
  },
  {
    title: "Monoliths, Microservices, and the In-Between",
    excerpt: "Architectural patterns for teams who want to ship, not just talk.",
    body: "Architectural patterns for teams who want to ship, not just talk.",
    slug: "monoliths-microservices-and-the-in-between",
    publish_at: Date.new(2024, 11, 15)
  },
  {
    title: "Dark Patterns in Modern SaaS",
    excerpt: "A critical look at how products manipulate users and what to do instead.",
    body: "A critical look at how products manipulate users and what to do instead.",
    slug: "dark-patterns-in-modern-saas",
    publish_at: Date.new(2024, 10, 22)
  }
]

puts "Seeding the database with #{articles.count} articles"
articles.each do |article_data|
  article = Article.find_or_create_by(slug: article_data[:slug]) do |a|
    a.title = article_data[:title]
    a.excerpt = article_data[:excerpt]
    a.publish_at = article_data[:publish_at]
    a.body = article_data[:body]
  end
  
  # Update body if article already exists but body is empty
  if article.body.blank? && article_data[:body].present?
    article.body = article_data[:body]
    article.save
  end
end
puts "#{Article.count} Articles created! Seeding complete!"

# Create user
User.find_or_create_by(email: "danladi.personal@gmail.com") do |u|
  u.password = "Devpass1"
  u.password_confirmation = "Devpass1"
end
puts "User created! Seeding complete!"

puts "Seeded #{Project.count} projects, #{Article.count} articles, and #{Book.count} books"