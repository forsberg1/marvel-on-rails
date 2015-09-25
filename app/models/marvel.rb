class Marvel

  STORY_ID = 37534

  # Public: Get story by story_id, sort of....
  #
  # Returns a Hash.
  def self.get_story

    uri = "#{MARVEL_CONFIG['end_point']}/v1/public/stories/#{STORY_ID}"
    begin
      response = HTTParty.get(uri, query: access_query)
      response.parsed_response
    rescue => e
      nil
    end

  end

  # Public: Get character by story
  # characters -  stories for the characte
  #
  # Returns a Hash.
  def self.get_character_by_story

    uri = "#{MARVEL_CONFIG['end_point']}/v1/public/stories/#{STORY_ID}/characters"
    begin
      response = HTTParty.get(uri, query: access_query)
      response.parsed_response
    rescue => e
      nil
    end

  end

  private

  # Private: Build auth hash for marvel
  #
  # Returns a Hash
  def self.access_query

    time = DateTime.now
    public_key  = MARVEL_CONFIG['public_key']
    private_key = MARVEL_CONFIG['private_key']
    hash = Digest::MD5.hexdigest(time.to_s+private_key+public_key)

    params = {
      ts: time,
      apikey: public_key,
      hash: hash
    }

  end

end
