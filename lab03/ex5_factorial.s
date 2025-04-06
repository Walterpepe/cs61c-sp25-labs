.globl factorial

.data
n: .word 7

.text
# Don't worry about understanding the code in main
# You'll learn more about function calls in lecture soon
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

# factorial takes one argument:
# a0 contains the number which we want to compute the factorial of
# The return value should be stored in a0
factorial:
    # YOUR CODE HERE
    mv t0, a0       # n
    addi t1, x0, 1  # product
    addi t2, x0, 2  # limit
loop:
    blt t0, t2, finish # exit loop if t0 < 2
    mul t1, t1, t0 # product = product * n
    addi t0, t0, -1 # decrement n
    j loop # loop

finish:
    mv a0, t1 # return value
    # This is how you return from a function. You'll learn more about this later.
    # This should be the last line in your program.
    jr ra
