class MountainArtist
  MOUNTAIN_HTML = File.readlines(Rails.root.join("data/mountain.html"))

  def paint(percentage:)
    MOUNTAIN_HTML[0..(MOUNTAIN_HTML.size * percentage)].join
  end
end
