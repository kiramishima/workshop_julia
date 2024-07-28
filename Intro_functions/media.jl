function calculateMean(numbers)
    n = length(numbers)
    a = 0
    for number in numbers
      a += number
    end
    return a / n
end

calculateMean2 = function(numbers)
    n = length(numbers)
    a = 0
    for number in numbers
      a += number
    end
    a / n
end

calculateMean3(numbers) = sum(numbers) / length(numbers)
