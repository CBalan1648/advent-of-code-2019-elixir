# inputLineOne = ["R75", "D30", "R83", "U83", "L12", "D49", "R71", "U7", "L72"]
# inputLineTwo = ["U62", "R66", "U55", "R34", "D71", "R55", "D58", "R83"]

inputLineOne = ["R8", "U5", "L5", "D3"]
inputLineTwo = ["U7", "R6", "D4", "L4"]



splittedData =
  [inputLineOne, inputLineTwo]
  |> Enum.map(
    fn input ->
        input|> Enum.map(&String.split(&1, "", trim: true, parts: 2))
      |> Enum.map_reduce([0, 0], &Common.mapToPoint(&1, &2))
      |> Tuple.to_list
      |> List.first
      |> Enum.map_reduce(0, &Common.mapToLine(&1, &2))
    end
  )
  

IO.inspect(splittedData)
