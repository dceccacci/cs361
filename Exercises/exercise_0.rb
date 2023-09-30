"""
Name: Devon Ceccacci
Date: Sep-27-2023
Course: 361 Software Engineering I
Project: Exercise 0
Language: Ruby

"""

# ----------- Function below ------------------


""" 
Prints the square root of each integer between a start integer and an end integer

Arguments:
    startNum {integer} -- Integer to start at
    endNum {integer} -- Integer to end at

"""
def print_square_root(startNum, endNum)

    num = startNum
    
    # Loop from starting number to ending number + 1 to ensure last number is not skipped
    until num == endNum + 1 do
        puts "Num: #{num}   Square Root: #{num ** 0.5}"
        num += 1
    end
end


# ----------- Code to execute function ----------------

print_square_root(1, 1000)