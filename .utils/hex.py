#!/usr/bin/env python3
import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("int")
    args = parser.parse_args()
    print("{0:x}".format(int(args.int)))
