class Episodes::ShowViewModel
  def initialize(episode)
    @episode = episode
  end

  def edit_path
    url_helpers.edit_episode_path(episode)
  end

  def draw_cabin?
    episode.cabin?
  end

  def back_path
    url_helpers.episodes_path
  end

  def episode_name
    episode.name
  end

  def series_name
    episode.series.name if episode.series.present?
  end

  def critter_count
    episode.critters.to_i
  end

  def happy_little_tree_count
    episode.happy_little_trees.to_i
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

  def url_helpers
    Rails.application.routes.url_helpers
  end
end
