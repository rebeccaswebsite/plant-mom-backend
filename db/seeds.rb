Note.destroy_all
Detail.destroy_all
Room.destroy_all
Suggestion.destroy_all

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
flowering_cactus = Plant.create(common_name: "Flowering Cactus", img: "/flowering-cactus.jpg")
spider_plant = Plant.create(common_name: "Spider Plant", img: "/spider-plant.jpg")
devils_ivy = Plant.create(common_name: "Devil's Ivy", img: "/devils-ivy.jpg")
aloe_vera = Plant.create(common_name: "Aloe Vera", img: "/aloe-vera.jpg")
calathea_sanderiana = Plant.create(common_name: "Calathea Sanderiana", img: "/calathea-sanderiana.png")
parlour_palm = Plant.create(common_name: "Parlour Palm", img: "/parlour-palm.png")
fiddle_leaf_fig = Plant.create(common_name: "Fiddle Leaf Fig", img: "/fiddle-leaf-fig.jpg")
swiss_cheese_plant = Plant.create(common_name: "Swiss Cheese Plant", img: "/swiss-cheese-plant.png")
snake_plant = Plant.create(common_name: "Snake Plant", img: "/snake-plant.jpg")

succulent_detail = Detail.create(plant: succulent, watering_schedule: "once a week", sunlight_exposure: "three hours of direct sun a day", temperature: 20, humidity: 40)
cactus_detail = Detail.create(plant: cactus,  watering_schedule: "once a week", sunlight_exposure: "five hours of direct sun a day", temperature: 20, humidity: 40)
flowering_cactus_detail = Detail.create(plant: flowering_cactus,  watering_schedule: "twice a week", sunlight_exposure: "four hours of direct sun a day", temperature: 15, humidity: 50)
spider_plant_detail = Detail.create(plant: spider_plant,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
devils_ivy_detail = Detail.create(plant: devils_ivy,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
aloe_vera_detail = Detail.create(plant: aloe_vera,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
calathea_sanderiana_detail = Detail.create(plant: calathea_sanderiana,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
parlour_palm_detail = Detail.create(plant: parlour_palm,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
fiddle_leaf_fig_detail = Detail.create(plant: fiddle_leaf_fig,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
swiss_cheese_plant_detail = Detail.create(plant: swiss_cheese_plant,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30 )
snake_plant_detail = Detail.create(plant: snake_plant,  watering_schedule: "once a week", sunlight_exposure: "two hours of direct sun a day", temperature: 10, humidity: 30)

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

note_one = Note.create(room_plant: plant_appearance_one, content: "Next to the window since April")
note_two = Note.create(room_plant: plant_appearance_one, content: "Next to the window since February")
note_three = Note.create(room_plant: plant_appearance_one, content: "Hates frost")
note_four = Note.create(room_plant: plant_appearance_one, content: "Flowering in May")
note_five = Note.create(room_plant: plant_appearance_one, content: "Soaked soil through on 06/04/2019")
note_six = Note.create(room_plant: plant_appearance_one, content: "Repotted on 02/01/2019")