## Rails app example (using Active Admin, Devise & Wicked PDF)

### How to setup the project

1. Copy the project and install its dependencies:

    git clone git@github.com:lucascaton/example_for_douglas.git ~/projects/example_for_douglas

    cd ~/projects/example_for_douglas

    bundle install

2. Run `bundle exec rake db:setup` in order to setup the database;

3. Install `wkhtmltopdf`:

[wkhtmltopdf download page](http://wkhtmltopdf.org/downloads.html)

4. Start the aplication: `bin/rails server` and done! You're ready to access the application: [localhost:3000](http://localhost:3000)

### First admin user

| Email             | Password |
| :---------------- | :--------|
| admin@example.com | password |
