def filter(tracks, lowest, highest)
  raise 'Please provide frequencies' if tracks == []
  raise 'Please provide adequate threshold values' if lowest > highest
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
