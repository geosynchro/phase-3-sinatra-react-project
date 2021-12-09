puts "🌱 Seeding data..."

#Category Seed data
bw = Category.create(name: "Bodyweight")
stretch = Category.create(name: "Stretch")
cardio = Category.create(name: "Cardio")
other = Category.create(name: "Other")
legs = Category.create(name: "Weights: Legs")
biceps = Category.create(name: "Weights: Biceps")
back = Category.create(name: "Weights: Back")
triceps = Category.create(name: "Weights: Triceps")
shoulders = Category.create(name: "Weights: Shoulders")
chest = Category.create(name: "Weights: Chest")

#Excercise Seed data
Exercise.create(name: "Push-Up", category_id: bw.id)
Exercise.create(name: "Pull-Up", category_id: bw.id)
Exercise.create(name: "Sit-Up", category_id: bw.id)
Exercise.create(name: "Chin-up", category_id: bw.id)
Exercise.create(name: "Squats", category_id: bw.id)
Exercise.create(name: "Tricep-dips", category_id: bw.id)
Exercise.create(name: "Lunges", category_id: bw.id)
Exercise.create(name: "Calf stretch", category_id: stretch.id)
Exercise.create(name: "Hamstring stretch", category_id: stretch.id)
Exercise.create(name: "Quad stretch", category_id: stretch.id)
Exercise.create(name: "Hip Flexor stretch", category_id: stretch.id)
Exercise.create(name: "Knee-to-chest stretch", category_id: stretch.id)
Exercise.create(name: "Shoulder stretch", category_id: stretch.id)
Exercise.create(name: "Neck stretch", category_id: stretch.id)
Exercise.create(name: "Run", category_id: cardio.id)
Exercise.create(name: "Bike Ride", category_id: cardio.id)
Exercise.create(name: "Swimming", category_id: cardio.id)
Exercise.create(name: "Jump-rope", category_id: cardio.id)
Exercise.create(name: "Hiking", category_id: cardio.id)
Exercise.create(name: "Meditation", category_id: other.id)
Exercise.create(name: "Barbell Squats", category_id: legs.id)
Exercise.create(name: "Conventional Deadlift", category_id: legs.id)
Exercise.create(name: "Romanian Deadlift", category_id: legs.id)
Exercise.create(name: "Leg press", category_id: legs.id)
Exercise.create(name: "Glute-bridge", category_id: legs.id)
Exercise.create(name: "Leg Raise", category_id: legs.id)
Exercise.create(name: "Leg Curl", category_id: legs.id)
Exercise.create(name: "Bicep Curls", category_id: biceps.id)
Exercise.create(name: "Hammer Curls", category_id: biceps.id)
Exercise.create(name: "EZ Bar Curls", category_id: biceps.id)
Exercise.create(name: "Bent-over Row", category_id: back.id)
Exercise.create(name: "T-bar Row", category_id: back.id)
Exercise.create(name: "Lat Pull-down", category_id: back.id)
Exercise.create(name: "Seated Row", category_id: back.id)
Exercise.create(name: "Cable Tricep Pushdown", category_id: triceps.id)
Exercise.create(name: "Lying Tricep Extension", category_id: triceps.id)
Exercise.create(name: "Tricep Dips", category_id: triceps.id)
Exercise.create(name: "Diamond Push-ups", category_id: triceps.id)
Exercise.create(name: "Bench Dip", category_id: triceps.id)
Exercise.create(name: "Dumbbell Front Raise", category_id: shoulders.id)
Exercise.create(name: "Dumbbell Lateral Raise", category_id: shoulders.id)
Exercise.create(name: "Reverse Fly", category_id: shoulders.id)
Exercise.create(name: "Military Press", category_id: shoulders.id)
Exercise.create(name: "High Pull", category_id: shoulders.id)
Exercise.create(name: "Flat Bench Press", category_id: chest.id)
Exercise.create(name: "Incline Bench Press", category_id: chest.id)
Exercise.create(name: "Decline Bench Press", category_id: chest.id)
Exercise.create(name: "Incline Dumbbell fly", category_id: chest.id)
Exercise.create(name: "Cable Crossover", category_id: chest.id)



#Routine seed data

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
names = ["Leg day", "Chest Day", "Cardio Day", "Rest Day", "Strech Day"]

chest = Routine.create(name: "Chest Day", days_of_week: "Monday")

10.times {
    Routine.create(
    name: names.sample,
    days_of_week: days.sample
)
}


#ExcerciseRoutine seed data

Routine.all.each {|routine|
    num = rand(3..8)
    num.times {
        ExerciseRoutine.create(
            routine: routine, 
            exercise: Exercise.all.sample, 
            duration: rand(10..30), 
            weight: rand(10..100), 
            reps: rand(8..15)
        )
    }
}



puts "✅ Done seeding!"
