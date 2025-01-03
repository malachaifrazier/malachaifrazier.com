# Codebase for https://malachaifrazier.com forked from https://joshpigford.com

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

## Notes
  You will run into this error if you try to run the server without precompiling the assets first:

  ```
    bin/rails aborted!
    Errno::EINVAL: Invalid argument
  ```

  Go ahead and clear the tmp, then precompile the assets and then start the server or run migrations or whatever.

  ```
    bundle exec rake tmp:clear --trace
    bundle exec rake assets:precompile
    bundle exec rails command
  ```

## How to deploy to Fly.io
  This is the documentation link: https://fly.io/docs/getting-started/rails/

  1. Provision Rails and Postgres Servers:
    To configure and launch your Rails app, you can use fly launch and follow the wizard. This will create a new app on Fly, provision a Postgres database, and configure your app to use it.
    ```
    flyctl launch
    ```

  2. Deploy your application:
    ```
    flyctl deploy
    ```
    This will take a few seconds as it uploads your application, builds a machine image, deploys the images, and then monitors to ensure it starts successfully. Once complete visit your app with the following command:
    ```
    flyctl open
    ```
    If all went well, you’ll see your Rails application homepage.

  3. View log files:
    ```
    flyctl logs
    ```
    This shows the past few log file entries and tails your production log files.
    Rails stack tracebacks can be lengthy, and the information you often want to see is at the top. If not enough information is available in the `fly logs` command, try running `fly dashboard`, and select `Monitoring` in the left hand column.

  4. Open a Rails console:
    ```
    flyctl console
    ```
    or
    ```
    flyctl ssh console
    ```
    If you are running with sqlite3 or a volume, you will need to ssh into an existing machine. You may need to first make sure that you have enough memory to accommodate the additional session.
    ```
    fly ssh console --pty -C "/rails/bin/rails console"
    ```


## Task TODOs

- [x] Add rspec tests
- [x] Swap out the Josh named stuff for my stuff
- [x] Un-generate the Josh-specific DB stuff
- [x] Remove the registration route
- [x] Update all the copy in my voice
- [x] Add a link to my Resume/CV
- [x] Add a link to my LinkedIn
- [x] Add a link to my GitHub
- [x] Decide on a new color scheme
- [x] Update the fonts
- [x] Update with new domain
- [x] Add Analytics
- [x] Choose a hosting provider: Fly.io
- [x] Update Porkbun DNS settings
- [x] Write deployment instructions in the README
- [x] Seed Projects
- [x] Seed Books
- [ ] Seed Articles

## Future Features

- [ ] *Create a Writings page with:
  - [ ] Poetry
  - [ ] Short Stories
  - [ ] Comic book manuscripts

- [ ] *Create a Services page for:
  - [ ] Rails Development
  - [ ] Handyman Services
  - [ ] Seed Services

- [ ] Update Book:
  - [x] Add author column
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
