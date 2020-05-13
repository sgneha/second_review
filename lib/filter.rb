def filter(tracks, lowest, highest)
  result = []
  result << if tracks.first < lowest
              lowest
            elsif
    tracks.first > highest
              highest
            else
              tracks.first
                      end
end
