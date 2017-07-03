class QuestionsController < ApplicationController
  before_action :authorize, only: [:show]

  def index
    @questions = Question.all
  end
end
