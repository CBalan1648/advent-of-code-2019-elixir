defmodule Common do
  # Day 1 part 2

  def calculateFuelRec(weight, fuel) when div(weight, 3) - 2 <= 0 do
    fuel
  end

  def calculateFuelRec(weight, fuel) do
    requiredFuel = div(weight, 3) - 2
    newFuel = fuel + requiredFuel
    calculateFuelRec(requiredFuel, newFuel)
  end

  # Day 2 part 1 - 2

  def intComputerRun(list, position) do
    code = Enum.at(list, position)
    intCodeRun(code, list, position)
  end


  def intCodeRun(code, list, position) when code == 1 do
    firstNumber = Enum.at(list, Enum.at(list, position + 1))
    secondNumber = Enum.at(list, Enum.at(list, position + 2))
    resultPosition = Enum.at(list, position + 3)

    #IO.puts "PLUS" <> to_string(firstNumber) <> to_string(secondNumber) <> to_string(resultPosition)

    intComputerRun(List.replace_at(list, resultPosition, firstNumber + secondNumber), position + 4)
  end

  def intCodeRun(code, list, position) when code == 2 do
    firstNumber = Enum.at(list, Enum.at(list, position + 1))
    secondNumber = Enum.at(list, Enum.at(list, position + 2))
    resultPosition = Enum.at(list, position + 3)

    #IO.puts "MULT" <> to_string(firstNumber) <> to_string(secondNumber) <> to_string(resultPosition)

    intComputerRun(List.replace_at(list, resultPosition, firstNumber * secondNumber), position + 4)
  end

  def intCodeRun(code, list, _position) when code == 99 do
    #IO.puts "END" <> to_string(code)
    list
  end

end
