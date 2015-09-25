module MarvelHelper

  def character_thumbnail_uri thumbnail

    unless thumbnail.blank?
      thumbnail_uri_prepend = thumbnail['path'] + "/portrait_large.#{thumbnail['extension']}"
    end

  end

end
