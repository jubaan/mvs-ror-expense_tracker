
# Capstone - Ruby on Rails - Expense Tracker

> The expense tracker is an application that lets the user keep track fo all
> their daily expenses. It has 4 main sections: the login, the dashboard,
> the All expenses section and the All expenses grouped by category.

### Check it online!
[Live preview](https://enigmatic-refuge-65429.herokuapp.com/)

You can create your own account or see an example with this username and
password.

``
email   : user@user.com
passwor : 1234567
``

### Previews
![01-welcome](https://user-images.githubusercontent.com/25774518/90350929-3f04ed80-e004-11ea-8faf-a3b66f32aedf.png)
![02-sign_in](https://user-images.githubusercontent.com/25774518/90350931-40361a80-e004-11ea-8491-be15de50960b.png)
![03-sign_up](https://user-images.githubusercontent.com/25774518/90350932-40361a80-e004-11ea-8503-1720c2ca5178.png)
![04-dashboard](https://user-images.githubusercontent.com/25774518/90350933-40ceb100-e004-11ea-925e-c61a7888b02b.png)
![05-add_new_expense](https://user-images.githubusercontent.com/25774518/90350934-40ceb100-e004-11ea-9215-f09415e2aeca.png)
![06-slide_menu](https://user-images.githubusercontent.com/25774518/90350935-40ceb100-e004-11ea-887b-1041e779a31c.png)
![07-categories](https://user-images.githubusercontent.com/25774518/90350937-41674780-e004-11ea-8412-3bbf69e97864.png)
## Built With
- Ruby v2.7.1
- Ruby on Rails v6.0.3.2
- Devise
- Haml
- Bootstrap v4.5
- Simple_form
- PostgresSQL
- AWS S3
- CarrierWave
- Capybara

## Getting Started

To get a local copy up and running clone this repository to your local
machine.

### Prerequisites

Ruby: 2.7.1
Rails: 6.0.3.2
Postgres: >=12.3
AWS S3-Bucket

After cloning and installing the prerequisites, follow this steps.

- configure AWS S3. [Instructions]('https://medium.com/@youngjoonjung/configuring-carrierwave-with-aws-s3-on-your-rails-application-figaro-ea6178106102')
- Run ``bundle install``
- Run ``rails db:create db:migrate db:seed``
- Run ``rails server``
- Open `http://localhost:3000/` in your browser
- Register and explore the application

### Run tests from root directory

Run the following command from root directory to test case.

``rspec``

## Authors

👤 **Julio Añoveros**

- Github: [@jubaan](https://github.com/jubaan)
- Twitter: [@AnoverosJulio](https://twitter.com/AnoverosJulio)

## Acknowledgment

- [Gregoire Vella on Behance](https://www.behance.net/gregoirevella)

## Show your support

Give a ⭐️ if you like this project!

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/jubaan/capstone/issues)
