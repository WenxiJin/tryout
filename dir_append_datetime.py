#!/usr/bin/env python -u

# This script is used for renaming a src directory to a new dst directory
# dst = src_datetime

import os
# import sys
import datetime

def dir_append_datetime(src, dst):
    """Function that renames a src directory to a dst directory by appending
    the current datetime into the src directory name.
    """

    # check if src exists and if it is a directory
    if not os.path.exists(src):
        raise Exception("\"%s\"" % src + " does not exist")
    if not os.path.isdir(src):
        raise Exception("\"%s\"" % src + " is not a directory")
    print src, "is ok for rename XD"

    now = datetime.datetime.now()
    dst = src + "_FAIL_" + now.isoformat()

    print "dst is:", dst

    os.rename(src, dst)

    return



if __name__ == "__main__":
    dir_append_datetime("olddir", "newdir")

