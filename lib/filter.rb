def filter(tracks, lowest, highest)
  result = []
  tracks.each do |freq|
    result << if freq < lowest
                lowest
              elsif
      freq > highest
                highest
              else
                freq
              end
  end
  result
end
