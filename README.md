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
