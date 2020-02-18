defmodule Common do
  def calculateFuelRec(weight, fuel) when div(weight, 3) - 2 <= 0 do
    fuel
  end

  def calculateFuelRec(weight, fuel) do
    requiredFuel = div(weight, 3) - 2
    newFuel = fuel + requiredFuel
    calculateFuelRec(requiredFuel, newFuel)
  end
end
