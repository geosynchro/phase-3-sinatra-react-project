class ExerciseRoutine < ActiveRecord::Base 
    belongs_to :routine
    belongs_to :exercise
  end