def jumping_on_clouds(c)
  result = 0
  i = 1

  while i < c.length
    if i + 1 < c.length && c[i + 1] != 1
      result += 1
      i += 2
      next
    end

    result += 1 if c[i] != 1
    i += 1
  end

  result
end

jumping_on_clouds([0,1,0,0,0,1,0])
