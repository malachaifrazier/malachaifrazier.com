# Codebase for https://malachai.xyz forked from https://joshpigford.com


## Setup

After you have cloned this repo, follow these steps to run the app:

1. Run the setup script to set up your machine with the necessary dependencies:

    ```
    bin/setup
    ```

2. Precompile the assets:

    ```
    bundle exec rake assets:precompile
    ```

3. Start the Rails server:

    ```
    bundle exec rails server
    ```

    You should now be able to view your app at <http://localhost:3000>.


## Task TODOs

- [x] Add rspec tests
- [x] Swap out the Josh named stuff for my stuff
- [x] Un-generate the Josh-specific DB stuff
- [x] Remove the registration route
- [x] Update all the copy in my voice
- [x] Add a link to my Resume/CV
- [x] Add a link to my LinkedIn
- [x] Add a link to my GitHub
- [ ] Decide on a new color scheme
- [x] Update the fonts
- [ ] Choose a hosting provider: Heroku, Digital Ocean, Fly.io, etc.
- [ ] Update Porkbun DNS settings
- [ ] Write deployment instructions for the chosen hosting provider in the README
- [ ] Seed Projects
- [ ] Seed Books
- [ ] Seed Articles


## Future Features

- [ ] Create a Technical Interviews page with:
  - [ ] A list of questions
  - [ ] A list of resources
  - [ ] A list of tips
  - [ ] Seed Technical Interviews

- [ ] Create a Writings page with:
  - [ ] Poetry
  - [ ] Short Stories
  - [ ] Comic book manuscripts

- [ ] Create a Services page for:
  - [ ] Rails Development
  - [ ] Handyman Services
  - [ ] Seed Services

- [ ] Update Book:
  - [ ] Add author and genre for novels
  - [x] Add Comics category
  - [ ] Add Comics creative team; writer, artist, colorist, letterer
  - [ ] Add cover image
  - [ ] Add a link to the book on Amazon
  - [ ] Book filter

- [ ] Create a Tools/Resources page with:
  - [ ] A list of tools/services/products I use and love
  - [ ] A list of resources
  - [ ] A list of tips
  - [ ] Seed Tools/Resources

- [ ] Create a sitemap.xml, robots.txt, humans.txt
- [ ] Create a Music page
- [ ] Integrate with Cal.com for scheduling (low priority)
- [ ] Do something about theinfernotimes icons
- [ ] Add a Contact form? Maybe?
- [ ] Add a Newsletter? Maybe?

