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
  { name: "Crowdheavy", slug: "crowdheavy", year: 2021, description: "Platform to provide remote user testing and usability insights.", outcome: "Shut it down", notes: "Not enough traction to cover operational costs.", link: "" },
  { name: "The Nation of Thiesa", slug: "thiesa", year: 2015, description: "A sovereign, fully digital nation-state with no claims to physical land.", outcome: "In limbo", notes: "Unofficially shut down. I'd be willing to revisit this project in the future.", link: "" },
  { name: "Detroit Rails", slug: "detroit-rails", year: 2014, description: "Entry-level, in-person Ruby on Rails classes in Detroit.", outcome: "Shut it down", notes: "The lack of qualified instructors coupled with rising Detroit real estate costs were the primary reasons why I shut it down. I'm willing to revisit this is the future.", link: "" },
  { name: "Shortjab", slug: "shortjab", year: 2011, description: "Two-sided marketplace for producers and recording artists.", outcome: "Shut it down", notes: "The app that I learned Rails to build. Competition ate my lunch.", link: "" },
  { name: "Easy Asset List", slug: "easy-asset-list", year: 2020, description: "A suite of tools designed to streamline processes for Real Estate Wholesale professionals.", outcome: "Shut it down", notes: "Wholesalers were not interested in a \"Zillow-like\" service just for them like I assumed.", link: "" },
  { name: "noonthirty.one", slug: "noon-thirty-one", year: 2024, description: "Holding firm for my future software projects.", outcome: "Active", notes: "Nothing fancy. I needed an entity to simplify things.", link: "https://noonthirty.one" },
  { name: "ComicCollab", slug: "comic-collab", year: 2024, description: "For comic book creators to collaborate on free and paid projects", outcome: "Active", notes: "Working on it!", link: "https://comiccollab.com" },
  { name: "Mighty Noice", slug: "mighty-noice", year: 2024, description: "Wild and mildly offensive clothing designs.", outcome: "Shut it down. Revived it. Shut it down again.", notes: "Really wanted this to work, but the business model is terrible.", link: "" },
  { name: "Sex Sounds Club", slug: "sex-sounds", year: 2023, description: "Spicy, erotic audio", outcome: "Shut it down", notes: "Nice amount of interest, but difficult to monetize the service and license the content", link: "" },
  { name: "The Inferno Times", slug: "the-inferno-times", year: 2024, description: "Satirical news site.", outcome: "In limbo", notes: "Hell's Premier News Source. Very fun.", link: "https://infernotimes.com" },
  { name: "Lawrilla", slug: "lawrilla", year: 2014, description: "Helped law firms grow and scale like tech startups.", outcome: "Shut it down", notes: "", link: "" },
  { name: "Courtshipper/Courtshipher", slug: "courtshipper", year: 2022, description: "The Suitor Tracking System.", outcome: "Shut it down", notes: "Dating app where suitors apply to each other with applications like a job. Extremely difficult to monetize without explosive growth. Did not have any of that.", link: "" },
  { name: "Fundercove", slug: "fundercove", year: 2019, description: "Alternative Investment Marketplace.", outcome: "Shut it down", notes: "Kickstarter, GoFundMe, and WeFunder on a single platform. Crowdfunding and Crowdinvesting for RegCF Startups. Might upgrade everything and open source it", link: "" },
  { name: "Wombathouse", slug: "wombathouse", year: 2022, description: "The family management system for the rest of us.", outcome: "Shut it down", notes: "Willing to revisit in the future", link: "" },
  { name: "Las Vegas Fence", slug: "lasvegasfence", year: 2015, description: "Lead gen for fence pros in Las Vegas", outcome: "Shut it down", notes: "", link: "" }
]

puts "Seeding the database with #{projects.count} projects"
projects.each do |project|
  Project.find_or_create_by(name: project[:name]) do |p|
    p.slug = project[:slug]
    p.year = project[:year]
    p.description = project[:description]
    p.outcome = project[:outcome]
    p.notes = project[:notes]
    p.link = project[:link]
  end
end
puts "#{Project.count} Projects created! Seeding complete!"