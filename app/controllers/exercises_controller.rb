# class ExercisesController < ApplicationController 
#     set :default_content_type, 'application/json'

#     get "/exercises" do
#         exercises = Exercise.all
#         exercises.to_json(include: :category)
#     end
# end