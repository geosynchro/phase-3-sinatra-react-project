class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/routines" do
    routines = Routine.all
    routines.to_json 
    # (include: [:exercise_routines])
  end

  get "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.to_json(include: [exercise_routines: {include: :exercise}])
  end

  post "/routines" do
    routine = Routine.create({name:params[:name], days_of_week: params[:days_of_week]})
    routine.to_json
  end

  delete "/routines/:id" do
    routine = Routine.find(params[:id])
    routine.destroy
    {message:"routine deleted"}.to_json
  end

  get "/exercises" do
    exercises = Exercise.all
    exercises.to_json(include: :category)
  end

  get "/exerciseroutines" do
    routines = ExerciseRoutine.all
    routines.to_json(include: [:routine, :exercise])
  end

  delete "/exerciseroutines/:id" do
    routine = ExerciseRoutine.find(params[:id])
    routine.destroy
    {message:"exercise deleted"}.to_json
  end

  post "/exerciseroutines" do
    if params[:routine_id] == nil
      "No routine ID".to_json
    else
      exercise_routines = ExerciseRoutine.create(
      routine_id:params[:routine_id], 
      exercise_id:params[:exercise_id], 
      duration: params[:duration], 
      reps: params[:reps], 
      weight: params[:weight])
      exercise_routines.to_json(include: :exercise)
    end
  end




  # get "/exercise/chest" do
  #   chest = Exercise.all.where(:name == "") 

end
