class Exercise < ActiveRecord::Base 
    has_many :exercise_routines
    has_many :routines, through: :exercise_routines
    belongs_to :category
  end