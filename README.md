# Portfolio Maker

This app serves as a way for Web app designers and developers to share their current skill sets and projects related to those skills.

## Usage

To run this project you must have rails installed.

Open project in terminal and run bundle to install necessary gems and run the following in terminal.

```
rake db:create
rake db:migrate
rails s
```

You should then be able to open on localhost:3000. You must register with site to use it. Devise is used for all user authentication and cancancan is used for authorization. To create an admin it must be done through the back-end at this time.
Once you are registered you can click on category to add new skills and then from the skills page add projects around those skills.

### Bug reports

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as
possible to help us fixing the possible bug. We also encourage you to help even more by forking and
sending us a pull request.


## Maintainers
1. James Williams (https://github.com/finalfreq)


## License
MIT License. Copyright 2015
