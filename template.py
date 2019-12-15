#!/usr/bin/env python
import argparse
import sys

VERSION = '0.1.0'


def validate_args(args):
    """
    Validate inputs
    """
    if not args.something:
        print('Something is invalid.\nPlease correct it.')
        sys.exit(1)


if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Short description here.')
    parser.add_argument('-v', '--verbose', dest='verbose', action='store_true', default=False, help='verbose output')
    args = parser.parse_args()

    validate_args(args)
