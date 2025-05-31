#!/usr/bin/env python
import getopt
import re
import sys

FIGURE_RE = re.compile(r"""
    ^(?P<ws>\s*)
    {{
       figure:
       \s*
       "(?P<name>[^"]+)"
       \s*
       (
          file:
          (?P<filename>[^}]+)
       )?
       \s*
    }}$""", re.VERBOSE)

# TODO: figure out a fixed scaling so all staves are same size
SIZE = 50 # percent

def transmute(infile, outfile):
    for line in infile:
        line.strip()
        m = FIGURE_RE.match(line)
        if m:
            prefix = m.group('ws')
            fullname = m.group('name')
            filename = m.group('filename')
            if not filename:
                filename = fullname.lower().replace(" ", "")
            print(f"""<h4>{fullname}</h4>""",file=outfile)
            print(f"""{prefix}<p><img src="./{filename}.cropped.png" name="{fullname}" style="width: {SIZE}%; height: auto;"/>""", file=outfile);
            print(f"""{prefix}<p><midi-player src="./{filename}.midi" sound-font />""",file=outfile)
            print(f"""{prefix}<hr/>""",file=outfile)
        else:
            print(f"{line}", file=outfile);

def usage():
    print("generate [options] infile.lst")
    print("  -o <file> / --output <file>  : output file")

def main(args):
    infile = sys.stdin
    outfile = sys.stdout
    try:
        opts, args = getopt.getopt(args, "oi:o:", ["help", "input=", "output="])
    except getopt.GetoptError as err:
        print(err)  # will print something like "option -a not recognized"
        usage()
        sys.exit(2)
    for o, a in opts:
        if o in ("-h", "--help"):
            usage()
            sys.exit()
        elif o in ("-i", "--input"):
            infile = open(a)
        elif o in ("-o", "--output"):
            outfile = open(a, "w")
        else:
            assert False, "unhandled option"
    transmute(infile, outfile)

if __name__ == "__main__":
    main(sys.argv[1:])
