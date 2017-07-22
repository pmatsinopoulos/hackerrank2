def migratory_birds(birds)
  birds.group_by(&:itself).values.sort do |a, b|
    if a.size == b.size
      b[0] <=> a[0]
    else
      a.size <=> b.size
    end
  end.last[0]
end
