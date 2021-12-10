# class RoutinesController < ApplicationController
#     set :default_content_type, 'application/json'

#     get "/routines" do
#         routines = Routine.all
#         routines.to_json 
#         # (include: [:exercise_routines])
#     end
# end