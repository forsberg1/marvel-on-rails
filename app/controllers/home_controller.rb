class HomeController < ApplicationController

  def index
    @story            = Marvel.get_story # Get story description ect
    @story_characters = Marvel.get_character_by_story # Get story characters
  end

end
