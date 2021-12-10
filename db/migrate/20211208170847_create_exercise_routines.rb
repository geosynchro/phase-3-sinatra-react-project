class CreateExerciseRoutines < ActiveRecord::Migration[6.1]
  def change
      create_table :exercise_routines do |t|
        t.integer :routine_id
        t.integer :exercise_id
        t.string :duration
        t.string :reps
        t.string :weight
      end
  end
end
