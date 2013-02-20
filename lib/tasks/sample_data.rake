namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    content = Faker::Lorem.paragraphs(3)
    Person.create!(
      first_name: "Grant",
      last_name: "Spilsbury",
      email: "grant@spam.com",
      phone_number: "0720000000",
      video_embed_code: '<a href="http://fast.wistia.net/embed/iframe/bacclqy6jv?autoPlay=true&controlsVisibleOnLoad=true&playerColor=c5e6b8&plugin%5BpostRoll-v1%5D%5Blink%5D=http%3A%2F%2Fwistia.com%3Fdefault_cta%3Dtrue&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BbackgroundColor%5D=%236586a3&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5Bcolor%5D=%23ffffff&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BfontFamily%5D=Gill%20Sans%2C%20Helvetica%2C%20Arial%2C%20sans-serif&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BfontSize%5D=36px&plugin%5BpostRoll-v1%5D%5Btext%5D=Call%20me%20now%20to%20arrange%20a%20meeting&popover=true&version=v1&videoHeight=360&videoWidth=640&volumeControl=true" class="wistia-popover[height=360,playerColor=c5e6b8,width=640]"><img src="http://embed-0.wistia.com/deliveries/7cb5386704ecaafa77bd67a4616c341a34ac15bb.jpg?image_play_button=true&image_play_button_color=c5e6b8e0&image_crop_resized=300x169" alt="" /></a>
      <script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>',
      description: content)
      
      Person.create!(
        first_name: "John",
        last_name: "Doe",
        email: "john@spam.com",
        phone_number: "0720099999",
        video_embed_code: '<a href="http://fast.wistia.net/embed/iframe/ayjora8urb?autoPlay=true&controlsVisibleOnLoad=true&playerColor=5db839&plugin%5BpostRoll-v1%5D%5Blink%5D=http%3A%2F%2Fwistia.com%3Fdefault_cta%3Dtrue&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BbackgroundColor%5D=%236586a3&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5Bcolor%5D=%23ffffff&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BfontFamily%5D=Gill%20Sans%2C%20Helvetica%2C%20Arial%2C%20sans-serif&plugin%5BpostRoll-v1%5D%5Bstyle%5D%5BfontSize%5D=36px&plugin%5BpostRoll-v1%5D%5Btext%5D=Call%20me%20now%20to%20arrange%20a%20meeting&popover=true&version=v1&videoHeight=360&videoWidth=640&volumeControl=true" class="wistia-popover[height=360,playerColor=5db839,width=640]"><img src="http://embed-0.wistia.com/deliveries/18d9645f2020ee243ea2084a6400e722beebf809.jpg?image_play_button=true&image_play_button_color=5db839e0&image_crop_resized=300x169" alt="" /></a>
        <script charset="ISO-8859-1" src="http://fast.wistia.com/static/popover-v1.js"></script>',
        description: content)
  end
end

