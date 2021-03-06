class ExercisesController < ApplicationController
  before_action :get_exercise, only: [:show, :edit, :update, :destroy]
  def index
    @exercises = Exercise.all
    @push = @exercises.select {|x| x.function == "push"}
    @pull = @exercises.select {|x| x.function == "pull"}
    @legs = @exercises.select {|x| x.function == "legs"}
  end

  def show
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
  end

  def edit
  end

  def update
    @exercise.update(exercise_params)
    redirect_to @exercise
  end

  def destroy
    @exercise.destroy
    redirect_to new_exercise_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :type, :part, :type, :function, :instructions, :time,
    :muscle_one, :muscle_two, :equipment, :body_part, :comment)
  end

  def get_exercise
    @exercise = Exercise.find(params[:id])
  end
end
