class LanguagesController < ApplicationController
  def index
    @languages = Language.all
  end

  def show
    @language = Language.find(params[:id])
    @filtered_users = User.where(languages: "#{@language.language_name}" )
  end
end
