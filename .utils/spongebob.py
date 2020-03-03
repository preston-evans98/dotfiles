#!/usr/bin/env python3
import argparse

def spongebob(string):
    new = []
    should_be_cap = True
    for char in string:
        if char.isalpha():
            should_be_cap = not should_be_cap
        if should_be_cap:
            new.append(char.upper())
        else: 
            new.append(char.lower())
    return "".join(new)

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("string")
    args = parser.parse_args()
    print(spongebob(args.string))
