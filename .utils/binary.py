import argparse

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("int")
    args = parser.parse_args()
    print("{0:b}".format(int(args.int)))
