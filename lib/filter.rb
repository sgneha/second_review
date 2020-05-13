def filter(tracks, lowest, highest)
  raise 'Please provide frequencies' if tracks == []
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
