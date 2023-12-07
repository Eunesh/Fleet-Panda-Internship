def counting_valleys(steps, path)
  valleys = 0
  level = 0

  path.chars[0...steps].each do |str|
    step_value = str == 'U' ? 1 : -1
    level_was = level
    level += step_value

    # Check if we just came out of a valley
    valleys += 1 if level_was.negative? && level.zero?
  end

  valleys
end


counting_valleys(8, "UDDDUDUU")
