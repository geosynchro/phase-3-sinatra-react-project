class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/routines" do
    routines = Routine.all
    routines.to_json(include: [:exercises])
  end

  get "/exerciseroutines" do
    routines = ExerciseRoutine.all
    routines.to_json(include: [:routine, :exercise])
  end


  # get "/exercise/chest" do
  #   chest = Exercise.all.where(:name == "") 

end
