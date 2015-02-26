# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Klass.destroy_all
User.destroy_all

Klass.create!([{
    	title: "Slackline",
    	user_id:  "1",
    	description: "learn to balance and tricks on the slackline",
    	date: "04.04.2015",
    	time: "16:00",
    	place:  "HaYarkon Park, Tel Aviv",
    	price:  "40",
      listed: "true",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/slackline.jpg",
        latitude: "32.090127",
        longitude: "34.780136",

},
{
    	title: "Yoga in German",
    	user_id:  "2",
    	description: "learn yoga outside on the rooftop with a german speaking instructor",
    	date: "27.06.2015",
    	time: "10:00",
    	place:  "basel 42, Tel Aviv",
    	price:  "40",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/shanyyoga.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",

},
{
    	title: "Run the marathon",
    	user_id:  "1",
    	description: "Marathon training with a daily training. Be prepaired for the hardest training ever 8 weeks ;)",
    	date: "27.02.2015",
    	time: "06:00",
    	place:  "שוק הנמל Tel Aviv Farmers Market",
    	price:  "1600",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/marathon.JPG",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
},
{
      title: "cooking course",
      user_id:  "2",
      description: "Let's cook vegan but fat ;)",
      date: "27.05.2015",
      time: "11:00",
      place:  "Bat Yam",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/download.jpeg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
},
{
      title: "Fix your House!",
      user_id:  "1",
      description: "Learn how to fix common things in your house by yourself ;)",
      date: "27.04.2015",
      time: "18:00",
      place:  "Beit kalka, tel aviv",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/fixing_house.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
},
{
      title: "Mosaic with Mia",
      user_id:  "3",
      description: "Learn how to fix common things in your house by yourself ;)",
      date: "27.04.2015",
      time: "18:00",
      place:  "Beit kalka, tel aviv",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/testclass.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
      },
{
      title: "Parkour training",
      user_id:  "4",
      description: "Climb up the highest walls without a ladder",
      date: "27.06.2015",
      time: "20:00",
      place:  "Ahad Ha'Am St, Ramat Gan",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/parkour.jpeg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
      },
      {
      title: "Learn Singing",
      user_id:  "4",
      description: "Do you have the dream of performing on stage?
Do you have the dream of singing? 
Do you want to learn how to sing in tune and speak effortlessly?
Do you have a fear of public speaking and suffer from stage fright?
Do you want to learn how to use your voice to get the results you want in life?

What are you going to get out of it?
* Vocal coaching which will teach you how to use your voice in a powerful, 
meaningful way 
* Tools to teach you how to sing in tune and speak effortlessly 
* How to perform on stage and convey your message in a powerful way 
* Musical theater workshop
* Body drumming and rhythm workshop 
* Tools to help you increase your self love and confidence 
* End of workshop performance
and Lots of Fun, Love and Singing

I'm here to tell you its absolutely possible!
I'm Briony, a singer, vocal coach, life coach and the creator of the Sounds Possible method. 
Imagine yourself standing on stage with confidence, singing outloud with no fear of what people might think.
Now, imagine a group of people supporting and loving you and you feeling comfortable with your own voice
Just imagine how wonderful that would be. 
I'd love to invite you to join my workshop which is all about you and your voice!
The Sounds possible singing workshop is opening Wednesday 4/3 for 8 weeks in Tel Aviv

the workshop will be in English 
to sign up and for any questions please contact me via pm on facebook 
or by emailing me at briony.hakol@gmail.com
or by calling 052-4740610
it doesnt only Sound possible it IS possible!
",
      date: "27.06.2015",
      time: "20:00",
      place:  "Florentin, Tel Aviv",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/singing.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
      
      },
{
      title: "Salsa with Anna",
      user_id:  "5",
      description: "Learn how to fix common things in your house by yourself ;)",
      date: "27.04.2015",
      time: "18:00",
      place:  "Dance Tel aviv",
      price:  "120",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/salsa.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",
      },
  {
      title: "SUP with audrey",
      user_id:  "6",
      description: "Let's go fitness SUP",
      date: "10.04.2015",
      time: "14:00",
      place:  "Hilton Beach, tel aviv",
      price:  "150",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/SUP-Fitness-Workshop-Audrey.jpg",
      listed: "true",
              latitude: "32.090127",
        longitude: "34.780136",



}])

User.create!([{
      email: "gebi.roshi@gmail.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Gebi",
      about_me: "Hi Its me",
      last_name: "Roschanek",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Test_pictures/Gabriel_User.png",
      mobile: "0548386486",
      birthdate: "08.09.1984",
      },

      {
      email: "shany@example.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Shany",
      about_me: "Hi Its me",
      last_name: "Shaked",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Test_pictures/Shany_user.jpeg",
      mobile: "054123456",
      birthdate: "27.06.1986",
},
{
      email: "mia@example.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Mia",
      about_me: "I'm very passionate about Mosaic",
      last_name: "Mia",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/MIA.jpg",
      mobile: "054123456",
      birthdate: "27.06.1989",
      },
{
      email: "pakour@example.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Parkourguy",
      about_me: "I'm very passionate about Parkour",
      last_name: "Guy",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/parkourguy.jpg",
      mobile: "054123456",
      birthdate: "27.06.1981",
      },
{
      email: "anna@example.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Anna",
      about_me: "I'm very passionate about Salsa",
      last_name: "Romvari",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/AnnaRomvari.jpg",
      mobile: "054123456",
      birthdate: "27.06.1983",
            },
{
      email: "audrey@example.com",
      password: "Online",
      password_confirmation: "Online",
      name: "Audrey",
      about_me: "I'm very passionate about SUP",
      last_name: "SUP",
      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Class_pictures/Audrey.jpg",
      mobile: "054123456",
      birthdate: "27.06.1981",
      }])


p "Created #{Klass.count} classes and #{User.count} teachers."