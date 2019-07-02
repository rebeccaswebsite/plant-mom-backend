RoomPlant.destroy_all
Detail.destroy_all
Room.destroy_all

Plant.destroy_all
User.destroy_all


rebecca = User.create(username: "Rebecca", password: "password")
amy = User.create(username: "Amy", password: "password")

living_room = Room.create(user: rebecca, name: "Living room")
bedroom = Room.create(user: rebecca, name: "Bedroom")
kitchen = Room.create(user: amy, name: "Kitchen")
bathroom = Room.create(user: amy, name: "Bathroom")

succulent = Plant.create(common_name: "Succulent", img: "/succulent.jpg")
cactus = Plant.create(common_name: "Cactus", img: "/cactus.jpg")
flowering_cactus = Plant.create(common_name: "Flowering cactus", img: "/flowering_cactus.jpg")
spider_plant = Plant.create(common_name: "Spider plant", img: "/spider_plant.jpg")

succulent_detail = Detail.create(plant: succulent, watering_schedule: "once a week", sunlight_exposure: "three hours of direct sun a day", temperature: 20, humidity: 40)
cactus_detail = Detail.create(plant: cactus,  watering_schedule: "once a week", sunlight_exposure: "five hours of direct sun a day", temperature: 20, humidity: 40)
flowering_cactus_detail = Detail.create(plant: flowering_cactus,  watering_schedule: "twice a week", sunlight_exposure: "four hours of direct sun a day", temperature: 15, humidity: 50)
spider_plant_detail = Detail.create(plant: spider_plant,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )

plant_appearance_one = RoomPlant.create(room: living_room, plant: succulent)
plant_appearance_two = RoomPlant.create(room: bedroom, plant: cactus)
plant_appearance_three = RoomPlant.create(room: bathroom, plant: succulent)
plant_appearance_four = RoomPlant.create(room: kitchen, plant: spider_plant)
plant_appearance_five = RoomPlant.create(room: living_room, plant: flowering_cactus)
plant_appearance_six = RoomPlant.create(room: living_room, plant: spider_plant)
plant_appearance_seven = RoomPlant.create(room: living_room, plant: succulent)
plant_appearance_eight = RoomPlant.create(room: bedroom, plant: flowering_cactus)
plant_appearance_nine = RoomPlant.create(room: bedroom, plant: succulent)

suggestion_one = Suggestion.create(plant: succulent, suggestion: "only water it once a month")
suggestion_two = Suggestion.create(plant: cactus, suggestion: "cacti need 10 hours of sunlight a day")