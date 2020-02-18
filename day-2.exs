input = [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,5,19,23,2,9,23,27,1,6,27,31,1,31,9,35,2,35,10,39,1,5,39,43,2,43,9,47,1,5,47,51,1,51,5,55,1,55,9,59,2,59,13,63,1,63,9,67,1,9,67,71,2,71,10,75,1,75,6,79,2,10,79,83,1,5,83,87,2,87,10,91,1,91,5,95,1,6,95,99,2,99,13,103,1,103,6,107,1,107,5,111,2,6,111,115,1,115,13,119,1,119,2,123,1,5,123,0,99,2,0,14,0]


correctedInputOne = List.replace_at(input, 1, 12)
correctedInputTwo = List.replace_at(correctedInputOne, 2, 2)
afterRunList = Common.intComputerRun(correctedInputTwo, 0)

IO.puts "Day one - part one => " <> to_string Enum.at(afterRunList,0)

targetOutput = 19690720

maxIndex = length(input) - 1



for firstTerm <- 1..maxIndex do
    for secondTerm <- 1..maxIndex do
    if (Enum.at(Common.intComputerRun(List.replace_at(List.replace_at(input, 1, firstTerm), 2, secondTerm), 0),0) == targetOutput) do
    IO.puts "First term is " <> to_string(firstTerm) <> ", second term is " <> to_string(secondTerm) 
    answer = 100 * firstTerm + secondTerm
    IO.puts "Day one - part two => " <>  to_string answer
    end
end
end
   
    
