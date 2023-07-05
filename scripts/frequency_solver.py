MAX_COURSE_TUNER = 15

def calc_coarse(tp):
    coarse_counter = 0
    ct = 0
    while coarse_counter <= MAX_COURSE_TUNER:
        coarse_counter += 1
        possible_ct = coarse_counter * 256
        if (abs(possible_ct - tp) < abs(ct - tp)) and (possible_ct <= tp):
            ct = coarse_counter
        
    return ct

def calc_fine(tp, coarse):
    return tp - (256 * coarse)

def calc_tp(clk, freq):
    return round (clk / (16 * freq))

"""
# User input code for frequency

clock = float(input("Enter clock speed in MHz: "))
clock = clock * 1e6
desired_frequency = float(input("Enter desired frequency in Hz: "))

tp = calc_tp(clock, desired_frequency)

coarse = calc_coarse(tp)
print("\nCourse tuner is ", coarse, "or (", bin(coarse), hex(coarse), ")")

fine = calc_fine(tp, coarse)
print ("Fine tuner is ", fine, "or (", bin(fine), hex(fine), ")")
"""

LOW_FREQ = 20
HIGH_FREQ = 20000

clock = float(input("Enter clock speed in MHz: "))
clock = clock * 1e6
file = open("frequency_table.txt", "w")
file.write("frequency table\n")
file.write("clock speed = {0}\n".format(clock))

freq = LOW_FREQ
while freq <= HIGH_FREQ:
    tp = calc_tp(clock, freq)
    coarse = calc_coarse(tp)
    fine = calc_fine(tp, coarse)
    file.write("frequency: {0} hz, coarse = {1}, fine = {2}\n".format(freq, coarse, fine))

    freq += 1

file.close()