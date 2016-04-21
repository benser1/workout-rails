 - We want to use Active Model Serializer

 - Models
  - Workout
    - has_many exercises
  - Exercise
    - Reps
    - Sets
  - Category
    - belongs_to workout

- Tables
  - Workout
    - Title
  - Exercise
    - Reps
    - Sets
  - Category
    - Title
    - Workout_id
