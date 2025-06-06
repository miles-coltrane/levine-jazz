#!/usr/bin/env python
import getopt
import re
import struct
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

SIZE = 50 # percent

def png_size(filename):
    with open(filename, 'rb') as f:
        data = f.read()
    if ((data[:8] != b'\x89PNG\r\n\x1a\n') or (data[12:16] != b'IHDR')):
        raise Exception(f"can't parse PNG file {filename}: {data[:8]}")
    w, h = struct.unpack('>LL', data[16:24])
    return int(w), int(h)

def transmute(infile, outfile, indir):
    for line in infile:
        line.strip()
        m = FIGURE_RE.match(line)
        if m:
            prefix = m.group('ws')
            fullname = m.group('name')
            filename = m.group('filename')
            if not filename:
                filename = fullname.lower().replace(" ", "")
            png_filename  = f"./{filename}.cropped.png"
            midi_filename  = f"./{filename}.midi"
            if indir:
                w, h = png_size(f"{indir}/{png_filename}")
                style = f"width: {w*SIZE/100}px; height: {h*SIZE/100}px;"
            else:
                style = f"width: {SIZE}%; height: auto;"
            print(f"""<details><summary>{fullname}</summary>""",file=outfile)
            print(f"""{prefix}<p><img src="{png_filename}" name="{fullname}" style="{style}"/>""", file=outfile);
            print(f"""{prefix}<p><midi-player src="{midi_filename}" sound-font />""",file=outfile)
            print(f"""{prefix}</details>""",file=outfile)
        else:
            print(f"{line}", file=outfile);

def usage():
    print("generate [options] infile.lst")
    print("  -i <file> / --input <file>  : input file")
    print("  -o <file> / --output <file> : output file")
    print("  -d <dir> / --dir <dir>      : directory holding images")

def main(args):
    infile = sys.stdin
    outfile = sys.stdout
    indir = None
    try:
        opts, args = getopt.getopt(args, "hi:o:d:", ["help", "input=", "output=", "dir="])
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
        elif o in ("-d", "--dir"):
            indir = a
        else:
            assert False, "unhandled option"
    transmute(infile, outfile, indir)

if __name__ == "__main__":
    main(sys.argv[1:])
