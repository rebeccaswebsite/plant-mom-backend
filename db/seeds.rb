RoomPlant.destroy_all
Detail.destroy_all
Room.destroy_all

Plant.destroy_all
User.destroy_all


rebecca = User.create(username: "rebecca", password: "password")
amy = User.create(username: "amy", password: "password")

living_room = Room.create(user: rebecca, name: "living room")
bedroom = Room.create(user: rebecca, name: "bedroom")
kitchen = Room.create(user: amy, name: "kitchen")
bathroom = Room.create(user: amy, name: "bathroom")

succulent = Plant.create(common_name: "succulent")
cactus = Plant.create(common_name: "cactus")
aloe_vera = Plant.create(common_name: "aloe vera")
spider_plant = Plant.create(common_name: "spider plant")

succulent_detail = Detail.create(plant: succulent, watering_schedule: "once a week", sunlight_exposure: "three hours of direct sun a day", temperature: 20, humidity: 40)
cactus_detail = Detail.create(plant: cactus,  watering_schedule: "once a week", sunlight_exposure: "five hours of direct sun a day", temperature: 20, humidity: 40)
aloe_vera_detail = Detail.create(plant: aloe_vera,  watering_schedule: "twice a week", sunlight_exposure: "four hours of direct sun a day", temperature: 15, humidity: 50)
spider_plant_detail = Detail.create(plant: spider_plant,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )

plant_appearance_one = RoomPlant.create(room: living_room, plant: succulent)
plant_appearance_two = RoomPlant.create(room: bedroom, plant: cactus)
plant_appearance_three = RoomPlant.create(room: bathroom, plant: succulent)
plant_appearance_four = RoomPlant.create(room: kitchen, plant: spider_plant)
plant_appearance_five = RoomPlant.create(room: living_room, plant: aloe_vera)
plant_appearance_six = RoomPlant.create(room: living_room, plant: spider_plant)
plant_appearance_seven = RoomPlant.create(room: living_room, plant: succulent)
plant_appearance_eight = RoomPlant.create(room: bedroom, plant: aloe_vera)
plant_appearance_nine = RoomPlant.create(room: bedroom, plant: succulent)
