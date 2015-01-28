# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Klass.destroy_all
Teacher.destroy_all
User.destroy_all

Klass.create!([{
    	title: "title",
    	teacher_id:  "1",
    	description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In accumsan lacus ut luctus sagittis. Mauris porttitor purus sit amet sodales tristique. Nunc ut cursus purus. Suspendisse nec turpis et ipsum pulvinar imperdiet. Duis vulputate sapien purus, ac dictum tortor dictum fermentum. Nulla facilisi. Vivamus placerat semper mi. Vivamus ac magna suscipit, porta nunc eget, consequat dolor. Donec tincidunt sodales nulla, pulvinar convallis urna tempor quis. Fusce ipsum dolor, malesuada a viverra eget, accumsan id ante. Donec erat dui, efficitur volutpat lacus nec, pharetra aliquam eros. Nulla facilisi. Curabitur porttitor ante et vehicula rutrum. Phasellus ut orci eget arcu mollis placerat lacinia ac ante. Nam et elit hendrerit, egestas elit at, sagittis dui. Praesent pharetra et magna id dignissim. Nullam maximus enim leo, ut feugiat leo pretium sit amet. Aliquam a lectus et urna molestie ultrices. Aliquam suscipit, eros eget iaculis tristique, diam sapien rutrum eros, quis tempus ante ex a purus. Pellentesque mattis, mi ac cursus blandit, sem urna volutpat neque, ac tempor neque augue eu est. Suspendisse egestas nisi eget tempor malesuada. Nunc at venenatis tortor, et blandit elit. Etiam sodales elementum purus, quis vehicula sapien ornare a. Cras pharetra porttitor pretium. Mauris eget sodales odio. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin sit amet odio et tellus tincidunt fringilla id vel massa. Vivamus ex risus, facilisis eget gravida eget, mollis sit amet mauris. Donec ut lobortis nulla, a iaculis elit. Aliquam mollis malesuada convallis. Suspendisse congue fringilla ante, vitae egestas est finibus vel. Pellentesque nec nulla sit amet justo consequat tempus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam enim nibh, scelerisque nec ultricies quis, venenatis in risus. Proin et nisi ultrices, accumsan ante non, maximus mi. Nam eu hendrerit dolor. Nunc justo ex, interdum non fermentum sed, ornare et felis. Ut efficitur, lacus at convallis mollis, ex ex lobortis leo, in gravida felis diam eget purus. Nullam vitae nibh ligula. Duis facilisis risus ac ultrices maximus. Nulla ultricies justo ante, sit amet consequat velit condimentum et. Duis tristique sagittis est ac faucibus. Cras efficitur magna nec imperdiet rhoncus. Maecenas non lobortis tortor. Sed ut dignissim diam. Etiam eget dolor id elit molestie pretium et at eros. Curabitur ac mi in justo suscipit lobortis. Phasellus egestas interdum urna vitae gravida. Integer tempor purus non enim imperdiet commodo. Sed scelerisque nunc purus, eget sodales dui cursus nec. Suspendisse aliquet neque a viverra rhoncus. Sed imperdiet elementum dui, et accumsan nulla efficitur sit amet. Nullam malesuada metus felis, non laoreet nibh porttitor vel.",
    	date: "01.01.2015",
    	time: "20:00",
    	place:  "basel 42, Tel Aviv",
    	price:  "500",
        latitude: "32.090127",
        longitude: "34.780136",


},
{
    	title: "Yoga",
    	teacher_id:  "2",
    	description: "best yoga ever",
    	date: "27.06.2015",
    	time: "10:00",
    	place:  "Beit kalka, Tel Aviv",
    	price:  "100",
        latitude: "32.077178",
        longitude: "34.776605",

},
{
    	title: "Run",
    	teacher_id:  "1",
    	description: "Marathon training",
    	date: "27.02.2015",
    	time: "06:00",
    	place:  "chovevei tsyion 9, Tel Aviv",
    	price:  "500",
        latitude: "32.071753",
        longitude: "34.789886",

}])

Teacher.create!([{
      name: "Gebi",
      last_name: "Roschanek",

      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Test_pictures/Gabriel_User.png",
      mobile: "0548386486",
      birthdate: "08.09.1984",
      },

      {
      name: "Shany",
      last_name: "Shaked",

      picture: "https://s3-eu-west-1.amazonaws.com/roshi.app/Test_pictures/Shany_user.jpeg",
      mobile: "054123456",
      birthdate: "27.06.1986",
      }])


p "Created #{Klass.count} classes and #{Teacher.count} teachers."