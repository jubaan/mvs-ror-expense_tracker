
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
![image01](https://user-images.githubusercontent.com/25774518/89700315-d8d8e600-d8f2-11ea-83f0-392af73f5d93.jpg)
![image02](https://user-images.githubusercontent.com/25774518/89700313-d8404f80-d8f2-11ea-8f98-f017d833eaf7.jpg)
![image03](https://user-images.githubusercontent.com/25774518/89700316-d8d8e600-d8f2-11ea-9f0b-31a8abd5f167.jpg)
![image04](https://user-images.githubusercontent.com/25774518/89700318-d9717c80-d8f2-11ea-9ed6-3e8bbbadbc07.jpg)

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
