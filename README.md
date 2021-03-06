[![mvgame74](https://circleci.com/gh/mvgame74/acebook-rails-The-Wallies.svg?style=svg&circle-token=692d9c4c326e8e079500a081b14042d7f4f35637)](https://circleci.com/gh/mvgame74/acebook-rails-The-Wallies)

# AceBook by The Wallies

You can find our application **[HERE](https://aqueous-harbor-18057.herokuapp.com/posts)**.


## About the Project 

This project is a web application that clones the main features of Facebook, users can create an account, and post messages and photos, as well as posting comments on other posts.

This project was built in weeks 8/9 of the Makers Academy course in a team of 8, using AGILE development process with sprints lasting 2 days.

We added features to be able to personalise a user's profile, and check their posts, as well as the profiles of other users who have posted.

### Built with

The main technologies used in this project are as follows:

* Ruby on Rails
* HTML
* CSS

## Getting started

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Instructions for starting up a new ticket


1. Pull the last version of Acebook from the MAIN branch from Github
2. Run $rails db:migrate to ensure working with a fresh version of `schema.rb`
2. Create a branch: `git checkout -b <branch_name>`.
3. Make your changes and commit them: `git commit -m '<commit_message>'`
4. Push to the original branch: `git push origin <project_name>/<location>`
5. Create the pull request.


## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
 ```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again

## Navigation Diagram

![Navigation Diagram](./app/assets/images/Acebook.jpg)

## Contributors

The people who have contributed to this project:

* [Charlie Casserly](https://github.com/charlie-casserly) ???? ???? ???? ???? ???? ????
* [Charlie Slater](https://github.com/cms718) ???? ???? ???? ???? ???? ????
* [Felix Piercy](https://github.com/fel1xp) ???? ???? ???? ???? ???? ????
* [Jonny Kelly](https://github.com/JD-Kelly) ???? ???? ???? ???? ???? ????
* [Maria Valero](https://github.com/mvgame74) ???? ???? ???? ???? ???? ????
* [Robert Dupplaw](https://github.com/rdupplaw) ???? ???? ???? ???? ???? ????
* [Russell Horth](https://github.com/russell-h)???? ???? ???? ???? ???? ????
* [Willoughby Hood](https://github.com/Wh3g) ???? ???? ???? ???? ???? ????

