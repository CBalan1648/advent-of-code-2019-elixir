inputLineOne = ["R75", "D30", "R83", "U83", "L12", "D49", "R71", "U7", "L72"]
# inputLineTwo = ["U62", "R66", "U55", "R34", "D71", "R55", "D58", "R83"]

#inputLineOne = ["R8", "U5", "L5", "D3"]
#inputLineTwo = ["U7", "R6", "D4", "L4"]

#String.split(&1, '', parts: 2)

splittedData = inputLineOne |> Enum.map(&(String.split(&1, "", trim: true, parts: 2)))

IO.inspect splittedData