class Episodes::ShowViewModel
  def initialize(episode)
    @episode = episode
  end

  def paint_3peak_mountain
    if snowy_mountains.present?
      mountain_artist.paint(percentage: mountain_percentage).html_safe
    end
  end

  private

  attr_reader :episode

  def mountain_percentage
    snowy_mountains.to_i/100.0
  end

  def snowy_mountains
    episode.snowy_mountains
  end

  def mountain_artist
    @mountain_artist ||= MountainArtist.new
  end
end
