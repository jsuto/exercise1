#!/usr/bin/python3

def main():
    count_numbers = 0
    uc_string = ''

    with open("1.txt", "r") as f:
        for line in f.readlines():
            uc_string += line.upper()
            if line[0].isnumeric():
                count_numbers += 1

    with open("1.txt", "w+") as f:
        f.write(uc_string)

    print(count_numbers)


if __name__ == "__main__":
    main()
